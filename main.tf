locals {
  postfix = var.name_postfix != "" ? var.name_postfix : random_pet.deploy.id
}

resource "random_pet" "deploy" {
}

resource "random_password" "root" {
  length = 16
}

resource "hsdp_container_host" "timescaledb" {
  name          = "timescaledb-${local.postfix}.dev"
  volumes       = 1
  volume_size   = var.volume_size
  instance_type = var.instance_type

  user_groups     = var.user_groups
  security_groups = ["analytics"]

  user = var.user

  private_key = var.private_key
  agent       = var.agent
}

resource "ssh_resource" "server" {
  triggers = {
    cluster_instance_ids = hsdp_container_host.timescaledb.id
  }

  host        = hsdp_container_host.timescaledb.private_ip
  user        = var.user
  private_key = var.private_key
  agent       = var.agent

  file {
    content = templatefile("${path.module}/scripts/bootstrap-server.sh.tmpl", {
      password          = random_password.root.result
      enable_fluentd    = var.hsdp_product_key == "" ? "false" : "true"
      log_driver        = var.hsdp_product_key == "" ? "local" : "fluentd"
      timescaledb_image = var.timescaledb_image
      timescaledb_id    = random_pet.deploy.id
    })
    destination = "/home/${var.user}/bootstrap-server.sh"
    permissions = "0700"
  }

  file {
    content = templatefile("${path.module}/scripts/bootstrap-fluent-bit.sh.tmpl", {
      ingestor_host    = data.hsdp_config.logging.url
      shared_key       = var.hsdp_shared_key
      secret_key       = var.hsdp_secret_key
      product_key      = var.hsdp_product_key
      custom_field     = var.hsdp_custom_field
      fluent_bit_image = var.fluent_bit_image
    })
    destination = "/home/${var.user}/bootstrap-fluent-bit.sh"
    permissions = "0700"
  }

  commands = [
    "docker volume create timescaledb || true",
    "/home/${var.user}/bootstrap-fluent-bit.sh",
    "/home/${var.user}/bootstrap-server.sh",
  ]
}

module "timescaledb" {
  source = "../../"

  user        = var.ldap_user
  user_groups = [var.ldap_user]

  cartel_secret = var.cartel_secret
  cartel_token  = var.cartel_token
  private_key   = file(var.private_key_file)

  docker_username = var.docker_username
  docker_password = var.docker_password
}

data "hsdp_config" "cf" {
  service = "cf"
}

data "hsdp_config" "gw" {
  service = "gateway"
}

data "hsdp_config" "logging" {
  service = "logging"
}

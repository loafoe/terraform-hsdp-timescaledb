provider "hsdp" {
  region        = var.hsdp_region
  environment   = var.hsdp_environment
  cartel_token  = var.cartel_token
  cartel_secret = var.cartel_secret

  debug_log = "/tmp/timescaledb.log"
}

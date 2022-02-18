output "timescaledb_password" {
  description = "Password"
  sensitive   = true
  value       = random_password.root.result
}

output "timescaledb_ip" {
  description = "Private IP address of TimescaleDB server"
  value       = hsdp_container_host.timescaledb.private_ip
}

output "timescaledb_id" {
  description = "Server ID of TimescaleDB"
  value       = random_pet.id
}

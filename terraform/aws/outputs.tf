output "opsman_username" {
  value = var.opsman_username
}

output "opsman_password" {
  value       = local.opsman_password
  sensitive   = true
}

output "opsman_decryption_passphrase" {
  value       = local.opsman_decryption_passphrase
  sensitive   = true
}

output "env_name" {
  value = var.env_name
}
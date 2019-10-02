locals {
  opsman_password              = "${var.opsman_password == "" ? random_string.opsman_password.result : var.opsman_password}"
  opsman_decryption_passphrase = "${var.opsman_decryption_passphrase == "" ? random_string.opsman_decryption_passphrase.result : var.opsman_decryption_passphrase}"
}

resource "random_string" "opsman_password" {
  length  = 8
  special = false
}

resource "random_string" "opsman_decryption_passphrase" {
  length  = 16
  special = false
}

data "aws_route53_zone" "selected" {
  name = "${var.dns_suffix}."
}
output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.networking.public_subnet_id
}

output "admin_public_ip" {
  description = "Public IP of the Admin Server"
  value       = module.compute.admin_public_ip
}

output "admin_public_dns" {
  description = "Public DNS of the Admin Server"
  value       = module.compute.admin_public_dns
}

output "application_public_ip" {
  description = "Public IP of the Application Server"
  value       = module.compute.application_public_ip
}

output "application_public_dns" {
  description = "Public DNS of the Application Server"
  value       = module.compute.application_public_dns
}

output "admin_private_ip" {
  description = "Private IP of the Admin Server"
  value       = module.compute.admin_private_ip
}

output "application_private_ip" {
  description = "Private IP of the Application Server"
  value       = module.compute.application_private_ip
}

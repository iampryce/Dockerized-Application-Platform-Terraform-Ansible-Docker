output "admin_public_ip" {
  description = "Public IP address of the Admin Server"
  value       = aws_instance.admin.public_ip
}

output "admin_public_dns" {
  description = "Public DNS name of the Admin Server"
  value       = aws_instance.admin.public_dns
}

output "application_public_ip" {
  description = "Public IP address of the Application Server"
  value       = aws_instance.app.public_ip
}

output "application_public_dns" {
  description = "Public DNS name of the Application Server"
  value       = aws_instance.app.public_dns
}

output "admin_private_ip" {
  description = "Private IP address of the Admin Server"
  value       = aws_instance.admin.private_ip
}

output "application_private_ip" {
  description = "Private IP address of the Application Server"
  value       = aws_instance.app.private_ip
}

output "admin_sg_id" {
  description = "Security Group ID for the Admin Server"
  value       = aws_security_group.admin.id
}

output "app_sg_id" {
  description = "Security Group ID for the Application Server"
  value       = aws_security_group.app.id
}

variable "vpc_id" {
  description = "ID of the VPC where compute resources will be deployed"
  type        = string
}

variable "subnet_id" {
  description = "ID of the public subnet for the EC2 instances"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the admin server"
  type        = string
  default     = "t3.micro"
}

variable "app_instance_type" {
  description = "EC2 instance type for the application server (runs Docker + containers)"
  type        = string
  default     = "t3.small"
}

variable "key_pair_name" {
  description = "Name of the EC2 key pair for SSH access"
  type        = string
}

variable "admin_ssh_allowed_cidr" {
  description = "CIDR block allowed to SSH into the admin server"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC, used for internal security group rules"
  type        = string
}

variable "project_name" {
  description = "Project name used for resource naming and tagging"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g. dev, staging, prod)"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming and tagging"
  type        = string
  default     = "dockerized-app-platform"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

# Networking
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

# Compute
variable "ami_id" {
  description = "AMI ID for EC2 instances (Ubuntu 24.04 LTS, us-east-1)"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the admin server"
  type        = string
  default     = "t3.micro"
}

variable "app_instance_type" {
  description = "EC2 instance type for the application server (runs Docker + 3 containers)"
  type        = string
  default     = "t3.small"
}

variable "key_pair_name" {
  description = "Name of the EC2 key pair for SSH access"
  type        = string
}

variable "admin_ssh_allowed_cidr" {
  description = "CIDR allowed to SSH into the admin server — restrict to your IP"
  type        = string
}

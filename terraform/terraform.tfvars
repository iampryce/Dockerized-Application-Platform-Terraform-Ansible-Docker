aws_region   = "us-east-1"
project_name = "dockerized-app-platform"
environment  = "dev"

# Networking
vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
availability_zone  = "us-east-1a"

# Compute
# ami_id: Ubuntu 24.04 LTS — us-east-1 (update if deploying to another region)
ami_id            = "ami-0e86e20dae9224db8"
instance_type     = "t3.micro"
app_instance_type = "t3.small"

# Replace with your EC2 key pair name (must already exist in AWS)
key_pair_name = "my-main-server"

# Restrict this to your own IP address for security: "x.x.x.x/32"
admin_ssh_allowed_cidr = "0.0.0.0/0"

module "networking" {
  source = "./modules/networking"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
  project_name       = var.project_name
  environment        = var.environment
}

module "compute" {
  source = "./modules/compute"

  vpc_id                 = module.networking.vpc_id
  subnet_id              = module.networking.public_subnet_id
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  app_instance_type      = var.app_instance_type
  key_pair_name          = var.key_pair_name
  admin_ssh_allowed_cidr = var.admin_ssh_allowed_cidr
  vpc_cidr               = var.vpc_cidr
  project_name           = var.project_name
  environment            = var.environment
}

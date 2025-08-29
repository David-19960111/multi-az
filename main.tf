module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "subnets" {
  source = "./modules/subnets"
  vpc_id = module.vpc.vpc_id
  igw_id = module.vpc.igw_id

  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs

  name_prefix = "multi-az"
}

module "nat" {
  source = "./modules/nat"

  public_subnet_ids       = module.subnets.public_subnet_ids
  private_route_table_ids = [module.subnets.private_route_table_ids]
  igw_id                  = module.vpc.igw_id
  name_prefix             = "multi-az"
}

module "ec2" {
  source = "./modules/ec2"

  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.subnets.private_subnet_ids
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  name_prefix        = var.name_prefix
  allowed_ssh_cidrs  = ["0.0.0.0/0"]
}

module "alb" {
  source = "./modules/alb"

  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.subnets.public_subnet_ids
  name_prefix       = var.name_prefix
  target_port       = 80
  target_protocol   = "HTTP"
}

module "autoscaling" {
  source = "./modules/autoscaling"

  vpc_id                = module.vpc.vpc_id
  private_subnet_ids    = module.subnets.private_subnet_ids
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  name_prefix           = var.name_prefix
  desired_capacity      = var.desired_capacity
  min_size              = var.min_size
  max_size              = var.max_size
  target_group_arn      = module.alb.target_group_arn
  alb_security_group_id = module.alb.alb_sg_id
  instance_port         = 80
  allowed_ssh_cidrs     = ["0.0.0.0/0"]
}

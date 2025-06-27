module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "subnets" {
  source = "./modules/subnets"
  vpc_id = module.vpc.vpc_id 
  igw_id = module.vpc.igw_id 

  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs = var.azs 

  name_prefix = "multi-az"
}
#Virtual Private Cloud
variable "vpc_cidr"{}
variable "vpc_name" {}

#Subnets
variable "vpc_id" {}
variable "igw_id" {}
variable "public_subnet_cidrs" {}
variable "private_subnet_cidrs" {}
variable "azs" {}
variable "name_prefix" {}

#Nat
variable "public_subnet_ids" {}
variable "private_route_table_ids" {}
variable "igw_id" {}
variable "name_prefix" {}

#Ec2
variable "vpc_id" {}
variable "private_subnet_ids" {}
variable "ami_id" {}
variable "instance_type" {}
variable "name_prefix" {}
variable "allowed_ssh_cidrs" {}

#Load Balancer 
variable "vpc_id" {}
variable "public_subnet_ids" {}
variable "name_prefix" {}
variable "target_port" {}
variable "target_protocol" {}

#Auto Scaling Group
variable "vpc_id" {}
variable "private_subnet_ids" {}
variable "ami_id" {}
variable "instance_type" {}
variable "name_prefix" {}
variable "desired_capacity" {}
variable "min_size" {}
variable "max_size" {}
variable "target_group_arn" {}
variable "alb_security_group_id" {}
variable "instance_port" {}
variable "allowed_ssh_cidrs" {}
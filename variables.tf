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

#Ec2
variable "private_subnet_ids" {}
variable "instance_type" {}
variable "allowed_ssh_cidrs" {}

#Load Balancer 
variable "target_port" {}
variable "target_protocol" {}

#Auto Scaling Group
variable "ami_id" {}
variable "desired_capacity" {}
variable "min_size" {}
variable "max_size" {}
variable "target_group_arn" {}
variable "alb_security_group_id" {}
variable "instance_port" {}
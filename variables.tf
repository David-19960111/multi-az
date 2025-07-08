<<<<<<< HEAD
<<<<<<< Updated upstream
=======
#Provider
variable "region" {
  type    = string
  default = "us-east-1"
}
variable "aws_access_key" {
  sensitive = true
}

variable "aws_secret_key" {
  sensitive = true
}

#Virtual Private Cloud
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "multi-az-vpc"
}

#Subnets
variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "name_prefix" {
  type    = string
  default = "multi-az"
}

#Nat
variable "public_subnet_ids" {
  type    = list(string)
  default = ["value"]
}

variable "private_route_table_ids" {
  type    = list(string)
  default = ["value"]
}

#Ec2
variable "private_subnet_ids" {
  type    = list(string)
  default = ["value"]
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "allowed_ssh_cidrs" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

#Load Balancer 
variable "target_port" {
  type    = number
  default = 80
}

variable "target_protocol" {
  type    = string
  default = "HTTP"
}

#Auto Scaling Group
variable "ami_id" {
  type    = string
  default = "ami-05ffe3c48a9991133"
}

variable "desired_capacity" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 2
}

variable "max_size" {
  type    = number
  default = 4
}

variable "target_group_arn" {
  type    = string
  default = "value"
}

variable "alb_security_group_id" {
  type    = string
  default = "value"
}

variable "instance_port" {
  type    = number
  default = 80
}
>>>>>>> Stashed changes
=======
#Virtual Private Cloud
variable "vpc_cidr" {}
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
>>>>>>> f6d7ec70be0a4ac8fa950ac029d24359b80d6b9e

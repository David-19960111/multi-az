#Provider
region = "us-east-1"

#Virtual Private Cloud
vpc_cidr = "10.0.0.0/16"
vpc_name = "multi-az-vpc"

#Subnets 
public_subnet_cidrs  = ["10.0.0.0/24", "10.0.1.0/24"]
private_subnet_cidrs = ["10.0.2.0/24", "10.0.3.0/24"]
azs                  = ["us-east-1a", "us-east-1b"]
name_prefix          = "multi-az"

#EC2
ami_id        = "ami-05ffe3c48a9991133" # Reemplaza con tu AMI (Amazon Linux, Ubuntu, etc.)
instance_type = "t3.micro"

#Auto Scaling Group
desired_capacity = 2
min_size         = 2
max_size         = 4

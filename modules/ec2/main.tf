resource "aws_security_group" "sg" {
  name = "${var.name_prefix}-ec2-sg"
  description = "Allow SSH inbound traffic"
  vpc_id = var.vpc_id 

  ingress {
    description = "SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.allowed_ssh_cidrs
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    Name = "${var.name_prefix}-ec2-sg"
  }
}

resource "aws_instance" "ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = element(var.private_subnet_ids, 0)
  vpc_security_group_ids = [ aws_security_group.sg.id ]
  associate_public_ip_address = false 

  tags = {
    Name = "${var.name_prefix}-ec2"
  }
}
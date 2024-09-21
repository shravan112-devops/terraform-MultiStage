# Key-Pair

resource "aws_key_pair" "my-key" {
  key_name   = "terra-key-aws"
  public_key = file("/home/ubuntu/practice-terraform/terra-key.pub")
}

# Default VPC

resource "aws_default_vpc" "default-vpc" {}

# Security Group

resource "aws_security_group" "my-security-grp" {
  name        = "allow ports"
  description = "this is security grp for ec2 instance"
  vpc_id      = aws_default_vpc.default-vpc.id  #interpolation

  # Incoming requests
  ingress {
    description = "For ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outgoing traffic
  egress {
    description = "this is for outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 instance

resource "aws_instance" "my-instance" {
  ami             = var.ami
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.my-key.key_name
  security_groups = [aws_security_group.my-security-grp.name]
}


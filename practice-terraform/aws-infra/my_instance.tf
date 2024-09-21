
# EC2 instance for demo 

resource "aws_instance" "my-instance" {
  count = var.instance_count
  ami             = var.ami
  instance_type   = var.instance_type
  tags = {
	Name = "${var.env}-terra-auto"
}
}

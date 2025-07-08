resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.type
  availability_zone = var.availability_zone
  tags = {
    name = "Day_30"
  }
}
resource "aws_security_group" "my_sg" {
  name        = "my-single-sg"
  description = "Single SG with multiple ports from same CIDR"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.cidr]
      description = "Allow TCP ${ingress.value} from ${var.cidr}"
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
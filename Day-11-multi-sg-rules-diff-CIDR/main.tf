resource "aws_security_group" "multi_sg" {
  name        = "multi-sg"
  description = "SG with multiple ingress rules each with different CIDRs"
  vpc_id      = var.vpc_id
}

resource "aws_security_group_rule" "ingress" {
  for_each = var.port_cidr_map

  type              = "ingress"
  from_port         = tonumber(each.key)
  to_port           = tonumber(each.key)
  protocol          = "tcp"
  cidr_blocks       = [each.value]
  security_group_id = aws_security_group.multi_sg.id
  description       = "Allow TCP ${each.key} from ${each.value}"
}
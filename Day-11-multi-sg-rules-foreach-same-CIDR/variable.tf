variable "port" {
    type = list(number)
    default = [ 80, 22, 443, 25 ]
  
}

variable "cidr" {
    type = string
    default = "10.0.0.0/24"
  
}

variable "vpc_id" {
  description = "ID of the VPC in which to create the security group"
  type        = string
  default = "vpc-00ba7c5a63daf8e04"
}

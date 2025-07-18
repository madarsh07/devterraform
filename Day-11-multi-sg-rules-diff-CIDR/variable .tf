variable "port_cidr_map" {
  description = "Map from port (as string) to CIDR blocks"
  type        = map(string)
  default = {
    "22"  = "10.1.0.0/24"
    "80"  = "10.2.0.0/24"
    "443" = "10.3.0.0/24"
    "3092" = "192.190.168.0/24"
  }
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default = "vpc-00ba7c5a63daf8e04"
}

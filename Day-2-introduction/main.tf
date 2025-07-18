resource "aws_instance" "name" {
    ami = "ami-05ee755be0cd7555c"
    instance_type = "t2.micro"
    key_name = "terraformkey"
  
}
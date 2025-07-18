resource "aws_instance" "name" {
  ami = "ami-0be5f59fbc80d980c"
  instance_type = "t2.micro"
  user_data = file("app.sh")
}
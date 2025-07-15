provider "aws" {
  region = "us-east-1"
}
variable "ami" {
  description = "ami value"
}
variable "instance_type" {
  description = "this is the type of ec2 instance"
}
resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
}
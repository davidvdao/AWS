provider "aws" {
  secret_key =  "nriYW4HwO2W91LvqVbun/GLO+2rRuc7FccHe+/bd"
  access_key =  "AKIAI6YOW75K7KA3HWAA"
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami = "ami-1df65f0b"
  count = 3
  instance_type = "t1.micro"
  tags {
    Name = "duy-testing"
  }
}
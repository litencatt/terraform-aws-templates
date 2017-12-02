resource "aws_instance" "web-server" {
  ami           = "ami-da9e2cbc"
  instance_type = "t2.micro"
  associate_public_ip_address = true

  tags {
    Name = "web-server"
  }
}

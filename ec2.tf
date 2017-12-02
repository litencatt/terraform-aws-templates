resource "aws_instance" "web-server" {
  ami           = "ami-da9e2cbc"
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = "${aws_network_interface.web-server-ni.id}"
    device_index = 0
  }

  tags {
    Name = "web-server"
  }
}

resource "aws_lightsail_instance_public_ports" "website_fw" {
  instance_name = aws_lightsail_instance.website.name

  port_info {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
    cidrs = ["0.0.0.0/0"]
  }


  port_info {
    protocol  = "tcp"
    from_port = 80
    to_port   = 80
  }


  port_info {
    protocol  = "tcp"
    from_port = 443
    to_port   = 443
  }
}
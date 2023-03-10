resource "aws_lightsail_instance" "website" {
  name              = var.AWS_NAME
  availability_zone = var.AWS_AVAILABILITY_ZONE
  blueprint_id      = var.AWS_BLUEPRINT
  bundle_id         = var.AWS_BUNDLE
  key_pair_name     = "website_key"
  add_on {
    type          = "AutoSnapshot"
    snapshot_time = "12:00"
    status        = "Enabled"
  }
}

resource "aws_lightsail_static_ip" "website_ip" {
  name = "website_ip"
}

resource "aws_lightsail_static_ip_attachment" "website_attach_ip" {
  static_ip_name = aws_lightsail_static_ip.website_ip.id
  instance_name  = aws_lightsail_instance.website.id
}

output "ip" {
  value = aws_lightsail_static_ip.website_ip
}
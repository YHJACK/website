resource "aws_lightsail_key_pair" "website_key" {
  name   = "website_key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}


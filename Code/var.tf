variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "ap-northeast-1"
}

variable "AWS_BLUEPRINT" {
  default = "ubuntu_20_04"
}

variable "AWS_BUNDLE" {
  default = "nano_2_0"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "../key/website_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "../key/website_key.pub"
}

variable "AWS_AVAILABILITY_ZONE" {
  default = "ap-northeast-1a"
}

variable "AWS_NAME"{
  default = "website_instance"
}


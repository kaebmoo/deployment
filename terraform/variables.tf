variable "aws_region" {
  default = "ap-south-1"
}

variable "aws_availability_zone_a" {
  default = "ap-south-1a"
}

variable "aws_availability_zone_b" {
  default = "ap-south-1b"
}

variable "qa_ami" {
  default = "ami-0279be4ad6b012061"
}

variable "staging_ami" {
  default = "ami-0c54ef6b68b4c24c6"
}

variable "production_ami" {
  default = "ami-071e000aa05cd7666"
}

variable "cardreader_ami" {
  default = "ami-04ea996e7a3e7ad6b"
}

variable "sandbox_db_password" {}

provider "aws" {
  region = "${var.aws_region}"

  version = "~> 1.21"
}

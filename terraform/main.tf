#
# Set remote backend to save state
#
terraform {
  backend "s3" {
    encrypt = true
  }
}

#
# Set up the AWS SSH key pair
#
resource "aws_key_pair" "simple_aws_key" {
  key_name   = "redapp-server-staging"
  public_key = "${file("~/.ssh/simple_aws_key.pub")}"
}

#
# Output provisioned IPs
#
output "qa-simple-server-ip" {
  value = "${aws_eip.qa_simple_server.public_ip}"
}

output "staging-simple-server-ip" {
  value = "${aws_eip.staging_simple_server.public_ip}"
}

output "production-simple-server-ip" {
  value = "${aws_eip.production_simple_server.public_ip}"
}

output "cardreader-simple-server-ip" {
  value = "${aws_eip.production_cardreader.public_ip}"
}

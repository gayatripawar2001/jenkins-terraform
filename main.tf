provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
  bucket = "ua-terraform-state"
  key = "dev/ec2-app2/terraform.tfstate"
  region = "us-east-2"
  }
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}

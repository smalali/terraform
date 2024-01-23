terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}


provider "aws" {
    region = "us-east-1"
    shared_config_files = [ "C:/Users/shish/.aws/config" ]
    shared_credentials_files = [ "C:/Users/shish/.aws/credentials" ]
}

resource "aws_vpc" "shishirvpc" {
    cidr_block = "192.168.0.0/24"
    tags = {
        Name = "TerraformVPC"
    }
}
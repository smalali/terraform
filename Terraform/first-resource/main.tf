
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

resource "aws_instance" "shishirec2" {
    ami = "ami-0a3c3a20c09d6f377"
    instance_type = "t3.micro"
    }


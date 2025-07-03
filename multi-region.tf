terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
provider "aws" {
  alias = "region1"
  region = "us-east-1"
}

provider "aws" {
    alias = "region2"
    region = "us-east-2"
  
}

resource "aws_instance" "example1" {
    ami = "ami-020cba7c55df1f615"
    instance_type = "t3.micro"
    provider = "aws.region1"
    tags = {
        Name = "demo1"
    }
}
resource "aws_instance" "example2" {
    ami = "ami-0d1b5a8c13042c939"
    instance_type = "t3.micro"
    provider = "aws.region2"
    tags = {
        Name = "demo2"
    }
}

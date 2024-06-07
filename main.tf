terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.41.0"
    }
  }

  required_version = ">=1.2.0"
}

provider "aws" {
    region  = "us-east-2"
    # profile = "Misha"
}

resource "aws_instance" "backend_server" {
    ami           = "ami-0b0ea68c435eb488d"
    instance_type = "t2.medium"

    tags = {
        Name = "backend"
    }
}

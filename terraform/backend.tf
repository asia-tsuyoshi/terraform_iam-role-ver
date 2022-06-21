terraform {
  required_version = "~> 1.2.0"
  backend "s3" {
    bucket = "watanabe-statebucket"
    key    = "actions/terraform.tfstate"
    region = "ap-northeast-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

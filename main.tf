terraform {
  required_version = "~> 0.14"
  backend "s3" {
    bucket  = "XXXXXXX" # Bucket name
    region  = "ap-northeast-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

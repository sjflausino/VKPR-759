terraform {
  cloud {
    organization = "sjflausino"
    workspaces {
      name = "VKPR-759"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

credentials "app.terraform.io" {
  token = ${{secret.TF_API_TOKEN}}
}

provider "aws" {
  region        = "us-east-1"
  access_key    = ${{secret.AWS_ACCESS_KEY_ID}}
  secret_key    = ${{secret.AWS_SECRET_ACCESS_KEY}}
    
}

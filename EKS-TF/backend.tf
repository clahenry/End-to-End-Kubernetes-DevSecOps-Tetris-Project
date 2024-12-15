terraform {
  backend "s3" {
    bucket         = "my-eks-terrform-bucket-v1-henry"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.14.0"
  required_providers {
    aws = {
      version = ">= 3.10.0"
      source  = "hashicorp/aws"
    }
  }
}

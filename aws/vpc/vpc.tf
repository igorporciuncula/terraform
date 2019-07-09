# Provider Configuration for AWS
provider "aws" {
  region = "us-east-2"
}

# Claro Labs VPC 
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "clarolabs"
  cidr = "10.21.0.0/16"

  azs             = ["us-east-2a", "us-east-2b"]
  public_subnets  = ["10.21.2.0/24", "10.21.4.0/24"]
  private_subnets = ["10.21.6.0/24", "10.21.8.0/24"]

}

terraform {
    backend "s3" {
      bucket = "tfclarolabs"
      key = "app-state"
      region = "us-east-2"
    }
}
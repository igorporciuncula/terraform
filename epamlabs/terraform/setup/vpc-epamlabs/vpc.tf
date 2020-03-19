# Provider Configuration for AWS
provider "aws" {
  region = "eu-west-2"
}

# EPAM Labs VPC 
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "epamlabs"
  cidr = "10.21.0.0/16"

  azs             = ["eu-west-2a", "eu-west-2b"]
  public_subnets  = ["10.21.2.0/24", "10.21.4.0/24"]
  private_subnets = ["10.21.6.0/24", "10.21.8.0/24"]

}

terraform {
  backend "s3" {
    bucket = "tfepamlabs"
    key    = "app-state"
    region = "eu-west-2"
  }
}
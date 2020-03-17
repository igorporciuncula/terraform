provider "aws" {
  region = "eu-west-2"
}
module "ec2_cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "Devops-epamlabs"
  instance_count = 1

  ami                    = "ami-0cb790308f7591fa6"
  instance_type          = "t2.micro"
  key_name               = "epamlabs"
  monitoring             = true
  vpc_security_group_ids = ["sg-0efb19a257987a562"]
  subnet_id              = "subnet-0f41e8f32b2720489"

  tags = {
    Terraform   = "true"
    Environment = "EPAMLabs"
  }
}

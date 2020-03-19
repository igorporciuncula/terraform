provider "aws" {
  region = "eu-west-2"
}
module "ec2_cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "JenkinsEPAMLabs"
  instance_count = 3

  ami                    = "ami-0cb790308f7591fa6"
  instance_type          = "t2.micro"
  key_name               = "epam"
  monitoring             = true
  //vpc_security_group_ids = ["sg-6b4c540a"]
  // Define your security group
  subnet_id              = "subnet-adfb79d7"

  tags = {
    Terraform   = "true"
    Environment = "EPAMLabs"
  }
}

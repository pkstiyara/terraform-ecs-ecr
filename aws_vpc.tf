module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  
  cidr = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  

  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = var.private_subnet_cidrs
  public_subnets = var.public_subnet_cidrs

  
vpc_tags = {
  "Name" = "dev-vpc"
}
   
}

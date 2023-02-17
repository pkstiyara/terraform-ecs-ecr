module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "6.4.0"
  # insert the 4 required variables here
  name = "my-alb"

  load_balancer_type = "application"

  vpc_id             = module.vpc.vpc_id
}
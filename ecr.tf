module "public_ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "1.5.1"

  repository_name = "public-example"
  repository_type = "public"

}
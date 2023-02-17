module "ecs" {
  source  = "terraform-aws-modules/ecs/aws"
  version = "3.2.0"
  # insert the 1 required variable here
  name = var.ecs_cluster_name
  
}
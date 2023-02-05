terraform {
  backend "s3" {
    bucket = "terraform-state-files-pankaj"
    key    = "terraform-state-files-pankaj/ecs-ecr/terraform.tfstate"
    region = "us-east-1"
  }
}
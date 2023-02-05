########## VPC ###############
variable "vpc_cidr" { 
    description = "cidr of the VPC"
    type = string
    default = "12.0.0.0/16"
}

################### EC2 #####################

variable "instance_name" {
    description = "Name for the EC2 Instance"
    type = string
    default = "EC2-Server"
  
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}



#################### ECS ####################

variable "ecs_cluster_name" {
    description = "Name for the ECS Cluster"
    type = string
    default = "dev-ecs-cluster"
}
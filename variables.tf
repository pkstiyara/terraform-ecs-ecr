########## VPC ###############
variable "vpc_cidr" { 
    description = "cidr of the VPC"
    type = string
    default = "10.0.0.0/16"
}



variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
 
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
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

variable "tags_ecs" {
  description = "A map of tags to add to ECS Cluster"
  type        = map(string)
  default     = {"Name" = "dev-ecs"}
}
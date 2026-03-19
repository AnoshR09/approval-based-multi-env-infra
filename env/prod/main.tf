provider "aws" {
    region = var.aws_region
  
}

module "vpc" {
    source  = "../../modules/vpc"
    cidr_block          = var.vpc_cidr
    subnet_cidr         = var.subnet_cidr
    availability_zone1  = var.availability_zone1
    name                = "prod-vpc"
    public_subnet1_cidr = var.subnet_cidr
    environment         = "prod"

}

module "ec2" {
    source = "../../modules/ec2"     
    ami_id = var.ami_id
    instance_type = var.instance_type
    subnet_id = module.vpc.subnet_id
    name = "prod-ec2-instance"
    environment = "prod"
}
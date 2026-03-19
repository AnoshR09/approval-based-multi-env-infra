variable "cidr_block" {}
variable "subnet_cidr" {}
variable "availability_zone1" {}
variable "name" {
    default = "multi-env-github-actions-vpc"
}
variable "public_subnet1_cidr" {}
variable "environment" {}
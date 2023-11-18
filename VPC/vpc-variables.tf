#define the vpc variables here 
variable "vpc_name" {
  description = "this is the vpc-name"
  type = string
  default = "my-vpc" #feel free to change it 
}

variable "vpc_cidr_block" {
  description = "CIDR block related to VPC"
  type = string
  default = "10.0.0.0/16" #feel free to change it 
}

variable "vpc_azs" {
  description = "the availbility zones for our VPC"
  type = list(string)
  default = [ "us-east-1a","us-east-1b" ] #feel free to change it 
}

variable "vpc_public_subnets" {
  description = "VPC public subnets"
  type = list(string)
  default = [ "10.0.1.0/24","10.0.2.0/24" ] #feel free to change it 
}

variable "vpc_private_subnets" {
  description = "VPC Private subnets"
  type = list(string)
  default = [ "10.0.100.0/24", "10.0.101.0/24" ] #feel free to change it 
}

variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type = list(string)
  default = [ "10.0.150.0/24","10.0.151.0/24" ] #feel free to change it 
}

variable "vpc_create_database_subnet_group" {
  description = "group of subnets for the VPC"
  type = bool
  default = true
}

variable "vpc_create_database_subnet_routetable" {
  description = "dedicated route table for database subnet"
  type = bool
  default = true
}

variable "vpc_enable_nat_gateway" {
  description = "create a natgateway for our vpc"
  type = bool
  default = true
}

variable "vpc_single_nat_gateway" {
    description = "create a single natgateway per AZ"
    type = bool
    default = true
}

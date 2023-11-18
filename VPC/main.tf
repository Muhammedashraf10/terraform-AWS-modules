module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"


  #VPC Basic Details
  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  #Subnets Details 

  azs = var.vpc_azs

  private_subnets = var.vpc_private_subnets
  public_subnets = var.vpc_public_subnets


  #Database subnets & Configuration 
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_routetable
  #create_database_nat_gateway_route = true
  #create_database_internet_gateway_route = true 
  database_subnets = var.vpc_database_subnets

  #Natgateway - Outbound communiication
  enable_nat_gateway = true
  single_nat_gateway = true


  #VPC DNS Parameter 
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = local.common_tags
  vpc_tags = local.common_tags
 
 public_subnet_tags = {
     Name = "Public Subnets"
     Terraform = "Yes"
  }
 
  private_subnet_tags = {
     Name = "Private Subnets"
     Terraform = "Yes"
  }
 
 database_subnet_tags = {
     Name = "Database Subnets"
     Terraform = "Yes"
 }
 
  
}


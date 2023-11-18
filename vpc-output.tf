#VPC output values


output "vpc_id" {
  description = "the VPC ID"
  value = module.vpc.vpc_id
}


output "vpc_cidr_block" {
  description = "the CIDR block of our VPC"
  value = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "list of our private subnets"
  value = module.vpc.private_subnets
}

output "public_subnets" {
  description = "list of our public subnets"
  value = module.vpc.public_subnets
}

output "database_subnets" {
  description = "list of our database subnets"
  value = module.vpc.database_subnets
}

output "nat_public_ips" {
  description = "NATGATWAY public IP"
  value = module.vpc.nat_public_ips
}

output "azs" {
    description = "AZS"
    value = module.vpc.azs
  
}

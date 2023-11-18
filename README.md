# terraform-AWS-modules
A terraform repository contains AWS modules for AWS services


# VPC Module files

# version.tf
contains the version required for terraform

# generic-variables.tf
contains a generic variables will be used across the module

# local-variables.tf
contains a local variable file whill be used across the module, tags and etc

# vpc-variables.tf
contains the variables which will be used to provision the VPC like ( VPC CIDR, subnets CIDR, routables, etc ).

# main.tf
this is the main terraform file for creating the VPC

# vpc-outputs.tf
this file contains the output parameters which will be generated after the VPC created like (VPC_ID, CIDRs, etc).

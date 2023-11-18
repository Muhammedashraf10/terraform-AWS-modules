#Define your local values which will be used across your module
locals {
  owners = var.department
  environment = var.environment
  name = "${var.department}-${var.environment}" 
  #name = "${local.owners}-${owners.environment}" 
  common_tags = { 
    owners = local.owners
    environment = local.environment
  }
}

#A general terraform file contains some generic variables

variable "aws_region" {
  default = "us-east-1"
  type = string
  description = "the region of your infrastructure"
}

variable "environment" {
  type = string
  default = "dev"
  description = "choose your env either prod or dev"
}

variable "department" {
  type = string
  default = "IT"
  description = "This variables contains the departmenet for your env"  # feel free to change it based on your usuage
}

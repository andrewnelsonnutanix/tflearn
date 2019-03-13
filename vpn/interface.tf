// vpn variables
variable "aws_cidr" {
  type = "string"
}

variable "gcp_cidr" {
  type = "string"
}

variable "gcp_region" {
  default = "us-east1"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "shared_secret" {
  type = "string"
}

variable "aws_vpc" {
  type = "string"
}

variable "aws_sg" {
  type = "string"
}

variable "aws_route_tables" {
  type = "list"
}

variable "num_aws_route_tables" {
  type = "string"
}

variable "aws_vpn_gateway" {
  type = "string"
}

module "aws" {
  source = "./aws"

  ami   = "ami-0cdb5083f77c58aff"
  zones = ["${var.aws_zones}"]
}

variable "aws_zones" {
  default = ["a", "b", "c"]
}

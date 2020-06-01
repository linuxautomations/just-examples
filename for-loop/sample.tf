locals {
  cidr_blocks = [
  for num in range(var.NUM_OF_PUBLIC_SUBNETS):
  cidrsubnet(var.VPC_CIDR, 8, num)
  ]
}

variable "NUM_OF_PUBLIC_SUBNETS" {
  default = 3
}

variable "VPC_CIDR" {
  default = "10.0.0.0/16"
}

output "CIDR" {
  value = local.cidr_blocks
}
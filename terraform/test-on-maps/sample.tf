variable "sample" {
  default = {
    "t2.micro" = 1
    "t2.medium" = 1
  }
}

output "SAMPLE" {
  value = replace(keys(var.sample)[0], ".", "-")
}
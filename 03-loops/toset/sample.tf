variable "my_list" {
  default = ["apple", "banana", "apple", "cherry"]
}

locals {
  count = 2
  my_set = toset(var.my_list)
}

output "my_set" {
  value = local.my_set
}
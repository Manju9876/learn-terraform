variable "my_list" {
  default = ["apple", "banana", "apple", "cherry"]
}

locals {

  my_set = toset(var.my_list)

}

output "my_set" {
  value = local.my_set
}

output "my_set_5_times" {
  value = [for i in range(5): local.my_set]
}
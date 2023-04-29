resource "null_resource" "null" {
  count = 10
}
resource "null_resource" "null1" {
  count = length(var.fruits)
}

variable "fruits" {
  default = ["apple", "mango", "orange"]
}
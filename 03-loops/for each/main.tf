resource "null_resource" "fruits" {
  count = 10
}
resource "null_resource" "null1" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo fruit name is - $(each.key)"
  }
}

variable "fruits" {
  default {
    apple = 10
    banana = 20
    oranges = 15
  }
}
resource "null_resource" "null" {
for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name is - ${each.key} - ${each.value}"
  }
}

variable "fruits" {
  default = {
    apple = 10
    mango = 23
    banana = 13
  }
}
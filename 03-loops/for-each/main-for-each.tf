
resource "null_resource" "fruits" {

  count = length(var.fruits)

  provisioner "local-exec" {
    command =  "echo Fruit Name - ${each.key}"
  }
}

variable "fruits" {
  default {
    apple = 10
    banana = 20
    oranges = 15
  }
}
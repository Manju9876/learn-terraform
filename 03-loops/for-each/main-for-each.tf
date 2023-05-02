
resource "null_resource" "fruits" {

 for_each = var.fruits1

  provisioner "local-exec" {
    command =  "echo Fruit Name - ${each.key} - ${each.value}"
  }
}

variable "fruits1" {
  default = {
    apple = {
      name = "apple"
      count = 10
    }
    mango = {
      name = "mango"
      count = 5
    }
  }
}

variable "fruits" {
  default = {
    apple = 10
    banana = 20
    oranges = 15
  }
}
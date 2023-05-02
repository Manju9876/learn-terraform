
resource "null_resource" "fruits" {

 for_each = var.fruits

  provisioner "local-exec" {
    command =  "echo Fruit Name - ${each.key} - ${each.value}"
  }
}


resource "null_resource" "fruits1" {

  for_each = var.fruits1

  provisioner "local-exec" {
    command =  "echo Fruit Name - ${each.key} - ${each.value["count"]}"
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
    oranges = {
      name = "oranges"
      count = 10
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


#resource "null_resource" "person_name" {
#  count = 3
#
#  provisioner "local-exec" {
#    command = "echo persons name  - ${var.persons[count.index]}
#  }
#}
#
#variable "persons" {
#  default = ["Manju", "parmesh", "sundar"]
#}

// For-each on a list
variable "vegetables" {
  default = ["carrot ", "capsicum"]
}

resource "null_resource" "vegetables" {

  for_each = toset(var.vegetables)

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key}"
  }

}
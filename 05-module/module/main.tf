resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo hello world form moduel- input is ${var.input}"
  }
}

variable "input" {}

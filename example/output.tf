output "sample_string" {
  value = var.sample_string
}

###If variable is a combination of some strings then following is the syntax. ${} is mandatory if we include the variable inside a string

output "sample_one" {
  value = "value of sample_string= ${var.sample_string}"
}

output "sample_list_2ndvalue" {
  value = var.sample_list[2]
}
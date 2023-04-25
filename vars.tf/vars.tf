variable "sample_string" {
  default = "hello world"
}
output "sample_string" {
  value = var.sample_string
}

###If variable is a combination of some strings then following is the syntax. ${} is mandatory if we include the variable inside a string

output "sample_one" {
  value = "value of sample_st${var.sample_string}"
}

###declaring a varible as a interger data type

variable "sample_number" {
  default = 100
}

###declaring with boolean

variable "sample_boolean" {
  default = true
}


###varible types
 #list variable

variable "sample_list" {
  default = [
  200,
  "hello world",
  123,
  true
  ]
}
output "sample_list" {
  value = "var.sample-list"
}

#data types inside the list varibale does not matter

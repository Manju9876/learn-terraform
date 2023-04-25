variable "sample_string" {
  default = "hello world"
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

output "sample_list_2" {
  value = var.sample_list[2]
}

#data types inside the list varibale does not matter

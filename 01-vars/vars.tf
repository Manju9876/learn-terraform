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
#data types inside the list varibale does not matter

#we have dictionary variable also called as map where this dict_variable holds multiple values and alos specifies the name  to each value

variable "sample_dict" {
  default = {
    num1 = 1234
    boolean = true
    string1 = "manju"
    string2 = "ajay"
  }
}

variable "env" {}
variable "auto_num1" {}
variable "sample1" {}
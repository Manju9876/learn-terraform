#prints the list 0f values in a single variable

output "sample_list_2" {
  value = [var.sample_list[1], var.sample_list[2]]
}

#this is dictnory type variable
# prints values with the name specified to it

output "sample_dict_strings" {
  value = [var.sample_dict["string1"], var.sample_dict["string2"]]
}
output "env" {
  value = var.env
}

output "auto_num1" {
  value = var.auto_num1
}



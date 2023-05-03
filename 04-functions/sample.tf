#covert string from lower to upper case

variable "convert" {
  default = "abcd"
}

output "conversion" {
  value = var.convert
}
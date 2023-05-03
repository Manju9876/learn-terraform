#covert string from lower to upper case

variable "convert" {
  default = "abcd"
}

output "conversion" {
  value = upper(var.convert)
}

## printing only the first value of the strng

variable "sample" {
  default = [ "abcd", "efgh" ]
}
output "sample" {
  value = element(var.sample,0)
}

# printing value using lookup function

variable "sample1" {
  default = {
    abcd = 1000
    efgh = 2000
  }
}

output "sample1" {
  value = lookup(var.sample1, "a1", "no value found" )
}
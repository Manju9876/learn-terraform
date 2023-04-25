variable "sample_sting" {
  default = "hello world"
}
output "sample_string" {
  value = var.sample_sting
}
output "sample_one" {
  value = "value of sample_string = ${var.sample_sting}"
}
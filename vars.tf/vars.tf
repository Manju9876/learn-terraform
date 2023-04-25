variable "sample_sting" {
  default = "hello world"
}
output "sample_string" {
  value = var.sample_sting
}
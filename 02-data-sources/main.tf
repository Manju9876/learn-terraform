data "aws_security_groups" "test"{}
output "security_group_id" {
  value = data.aws_security_groups.test
}
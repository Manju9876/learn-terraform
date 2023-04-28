#resource "aws_instance" "web" {
#  ami           = "ami-0b5a2b5b8f2be4ec2"
#  instance_type = "t3.micro"
#
#  tags = {
#    Name = "HelloWorld"
#  }
#}
data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}
data "aws_security_group" "allow-all" {
  name = "allow-all"
}
variable "instance_type"{
  default = "t3.small"
}
resource "aws_instance" "demo" {
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]


  tags = {
    Name = "demo"
  }
}
resource "aws_route53_record" "demo" {
  zone_id = "Z06653061K00JAPLVF5JM"
  name    = "frontend-dev.manju-devops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.demo.private_ip]
}


resource "aws_spot_instance_request" "demo" {
  ami           = data.aws_ami.centos.image_id
  spot_price    = "0.03"
  instance_type = "t3.small"
  spot_type     = "persistence"
  instance_interruption_behavior = "stop"

  tags = {
    Name = "demo"
  }
}
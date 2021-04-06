

resource "aws_instance" "myec2" {
  count         = var.instanceCount
  ami           = var.amiid
  instance_type = "t2.micro"
  tags = {
    "Name" = "Mandeep-${var.tags[count.index]}"
  }
}

output "myec2ipaddress" {
  value = aws_instance.myec2[*].public_ip
}

output "myec2privateip" {
  value = aws_instance.myec2[*].private_ip
}
resource "aws_instance" "test" {
  ami           = var.instance_image
  instance_type = var.instance_type
  subnet_id     = aws_subnet.test.id
  user_data     = file("./files/user_data.sh")
  key_name      = var.key_name

  vpc_security_group_ids = [
    aws_security_group.web.id,
    aws_security_group.ssh.id
  ]

  tags = {
    Name = "test-instance"
  }
}

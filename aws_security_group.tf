resource "aws_security_group" "web" {
  name   = "web"
  vpc_id = aws_vpc.test.id

  ingress {
    description = "allow http"
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = [format("%s/%d", var.my_ip, 32)]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "ssh" {
  name   = "ssh"
  vpc_id = aws_vpc.test.id

  ingress {
    description = "allow ssh"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = [format("%s/%d", var.my_ip, 32)]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

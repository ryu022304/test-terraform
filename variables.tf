variable "my_ip" {}

variable "key_name" {
  default = "test-key"
}

variable "instance_image" {
  default = "ami-0f037327d64de9e49"
}

variable "instance_type" {
  default = "t3.nano"
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.large"
}

variable "key_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "security_group_ids" {
  type = list(string)
  default = []
}

variable "instance_name" {
  type    = string
  default = "ec2-instance"
}

variable "tags" {
  type    = map(string)
  default = {}
}


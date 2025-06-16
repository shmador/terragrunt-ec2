terraform {
  source = "../../../modules/ec2-instance"
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "shapizzz-tf-state"
    key            = "prod/terraform.tfstate"
    region         = "il-central-1"
  }
}

inputs = {
  ami_id              = "ami-01399d4e98109fa39"  # replace with the AMI you need
  instance_type       = "t2.large"               # or "t3.large"
  key_name            = "imtec"
  subnet_id           = "subnet-088b7d937a4cd5d85"
  security_group_ids  = ["sg-0ac3749215afde82a"]
  instance_name       = "shapiz"
  tags = {
    Environment = "prod"
    Project     = "module1"
  }
}


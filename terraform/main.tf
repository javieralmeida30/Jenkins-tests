provider "aws" {
  access_key = var.aws_access_key_var
  secret_key = var.aws_secret_key_var
  region     = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "example-instance"
  }
}

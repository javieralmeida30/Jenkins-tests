provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID_var
  secret_key = var.AWS_SECRET_ACCESS_KEY_var
  region     = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "example-instance"
  }
}

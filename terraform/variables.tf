variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = var.aws_region_default
}

variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "aws_access_key_var" {
  description = "AWS_ACCESS_KEY_ID"
}

variable "aws_secret_key_var" {
  description = "AWS_SECRET_ACCESS_KEY"
}

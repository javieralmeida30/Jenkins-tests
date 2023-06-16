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

variable "aws_access_key" {
  description = "Access Key"
  default     = var.aws_access_key_default
}

variable "aws_secret_key" {
  description = "Secret Key"
  default     = var.aws_secret_key_default
}

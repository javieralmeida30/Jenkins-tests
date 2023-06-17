variable "aws_region_default" {
  description = "Default AWS region"
  type        = string
  default     = "us-east-2"
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
  type        = string
  default     = null
}

variable "aws_secret_key_var" {
  description = "AWS_SECRET_ACCESS_KEY"
  type        = string
  default     = null
}

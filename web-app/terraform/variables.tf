variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "eu-central-1"
}

variable "aws_access_key" {
  type        = string
  description = "AWS Access Key ID"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
}

variable "app_data_bucket_name" {
  type        = string
  description = "S3 bucket name for app data"
}

variable "user" {
  type        = string
  description = "AWS IAM User"
}
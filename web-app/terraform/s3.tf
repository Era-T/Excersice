resource "aws_s3_bucket" "app_data" {
  bucket = var.app_data_bucket_name

  tags = {
    Environment = "dev"
  }
}
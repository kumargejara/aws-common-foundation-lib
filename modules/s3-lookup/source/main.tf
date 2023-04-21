data "aws_s3_bucket_objects" "target_objects" {
  bucket = var.bucket_name
}

data "aws_s3_bucket_object" "object_info" {
  count  = length(data.aws_s3_bucket_objects.target_objects.keys)
  key    = element(data.aws_s3_bucket_objects.target_objects.keys, count.index)
  bucket = data.aws_s3_bucket_objects.target_objects.bucket
}

provider "aws" {
  region = "us-west-1"
}
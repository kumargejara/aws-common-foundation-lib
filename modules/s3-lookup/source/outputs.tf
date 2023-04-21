output "s3_bucket_object_id" {
  description = "The key of S3 object"
  value       = data.aws_s3_bucket_object.object_info
}
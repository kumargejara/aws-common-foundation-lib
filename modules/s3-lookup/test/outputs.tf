output "s3_bucket_object_id" {
  description = "The key of S3 object"
  value       = module.s3-lookup-test.s3_bucket_object_id
}
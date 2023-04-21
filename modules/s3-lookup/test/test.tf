module "s3-lookup-test" {
  source = "../source"
  bucket_name = "cdktoolkit-stagingbucket-172xiosh34rqo"
}

variable "s3_bucket_object_id" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

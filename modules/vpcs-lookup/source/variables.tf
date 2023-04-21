variable "vpc_arn_list" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

variable "vpc_owner_id_list" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

variable "vpc_main_route_table_id_list" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

variable "subnet_cidr_blocks" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

variable "subnet_arn_list" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

variable "subnet_id_list" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

variable "subnet_ip_count" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

variable "subnet_owner_id" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = list
  default     = null
  sensitive   = false
}

variable "subnet_details" {
  type = list(map(string))
  default = []
  sensitive   = false
}

variable "vpc_details" {
  type = list(map(string))
  default = []
  sensitive   = false
}




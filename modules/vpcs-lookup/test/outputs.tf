output "vpc_arn_list" {
  description = "The key of S3 object"
  value       = module.vpcs-lookup-test.vpc_arn_list
}

output "vpc_owner_id_list" {
  description = "The key of S3 object"
  value       = module.vpcs-lookup-test.vpc_owner_id_list
}

output "vpc_main_route_table_id_list" {
  description = "The key of S3 object"
  value       = module.vpcs-lookup-test.vpc_main_route_table_id_list
}

output "subnet_cidr_blocks" {
  description = "The key of S3 object"
  value = module.vpcs-lookup-test.subnet_cidr_blocks
}

output "subnet_arn_list" {
  description = "The key of S3 object"
  value = module.vpcs-lookup-test.subnet_arn_list
}

output "subnet_id_list" {
  description = "The key of S3 object"
  value = module.vpcs-lookup-test.subnet_id_list
}

output "subnet_ip_count" {
  description = "The key of S3 object"
  value = module.vpcs-lookup-test.subnet_ip_count
}

output "subnet_owner_id" {
  description = "The key of S3 object"
  value = module.vpcs-lookup-test.subnet_owner_id
}

output "subnet_details" {
  description = "The key of S3 object"
  value = module.vpcs-lookup-test.subnet_details
}

output "vpc_details" {
  description = "The key of S3 object"
  value = module.vpcs-lookup-test.vpc_details
}


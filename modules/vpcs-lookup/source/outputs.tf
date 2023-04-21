output "vpc_arn_list" {
  value = [for v in data.aws_vpc.vpc_info : v.arn]
}

output "vpc_owner_id_list" {
  value = [for v in data.aws_vpc.vpc_info : v.owner_id]
}

output "vpc_main_route_table_id_list" {
  value = [for v in data.aws_vpc.vpc_info : v.main_route_table_id]
}

output "subnet_cidr_blocks" {
  value = [for s in data.aws_subnet.example : s.cidr_block]
}

output "subnet_arn_list" {
  value = [for s in data.aws_subnet.example : s.arn]
}

output "subnet_id_list" {
  value = [for s in data.aws_subnet.example : s.id]
}

output "subnet_ip_count" {
  value = [for s in data.aws_subnet.example : s.available_ip_address_count]
}

output "subnet_owner_id" {
  value = [for s in data.aws_subnet.example : s.owner_id]
}

output "subnet_details" {
  value = local.subnet_details
}

output "vpc_details" {
  value = local.vpc_details
}
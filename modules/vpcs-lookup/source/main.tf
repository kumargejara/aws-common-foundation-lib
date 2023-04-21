data "aws_vpcs" "vpc_list" {}

data "aws_vpc" "vpc_info" {
  count = length(data.aws_vpcs.vpc_list.ids)
  id    = tolist(data.aws_vpcs.vpc_list.ids)[count.index]
}

data "aws_subnets" "example" {
  filter {
    name   = "vpc-id"
    values = tolist(data.aws_vpcs.vpc_list.ids)
  }
}

data "aws_subnet" "example" {
  for_each = toset(data.aws_subnets.example.ids)
  id       = each.value
}

provider "aws" {
  region = "us-west-1"
}

locals {
  subnet_details = [
        for subnet in data.aws_subnet.example : {
          cidr_block                    = subnet.cidr_block
          owner_id                      = subnet.owner_id
          arn                           = subnet.arn
          available_ip_address_count    = subnet.available_ip_address_count
          id                            = subnet.id
        }
  ]

  vpc_details = [
        for vpc in data.aws_vpc.vpc_info : {
          owner_id                      = vpc.owner_id
          arn                           = vpc.arn
          main_route_table_id           = vpc.main_route_table_id
        }
  ]
}

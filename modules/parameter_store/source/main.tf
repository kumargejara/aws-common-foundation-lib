resource "aws_ssm_parameter" "paramter" {
  #for_each = var.parameter_list
for_each = { for x in var.parameter_list: x.name => x }

  name  = each.value.name
  type  = each.value.type
  value = each.value.value
}

provider "aws" {
  region = "us-west-1"
}



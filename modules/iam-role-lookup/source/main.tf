data "aws_iam_roles" "roles" {}

data "aws_iam_role" "role_info" {
  count = length(data.aws_iam_roles.roles.names)
  name    = tolist(data.aws_iam_roles.roles.names)[count.index]
}

provider "aws" {
  region = "us-west-1"
}

locals {
  role_details = [
        for role in data.aws_iam_role.role_info : {
          id                     = role.id
          arn                    = role.arn
          assume_role_policy     = role.assume_role_policy
          create_date            = role.create_date
          description            = role.description
          max_session_duration   = role.max_session_duration
          path                   = role.path
          permissions_boundary   = role.permissions_boundary
          unique_id              = role.unique_id
        }
  ]
}


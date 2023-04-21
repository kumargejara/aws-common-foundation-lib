data "aws_iam_users" "users" {}

data "aws_iam_user" "user_info" {
  count = length(data.aws_iam_users.users.names)
  user_name    = tolist(data.aws_iam_users.users.names)[count.index]
}

provider "aws" {
  region = "us-west-1"
}

locals {
  user_details = [
        for user in data.aws_iam_user.user_info : {
          user_id                = user.user_id
          arn                    = user.arn
          user_name              = user.user_name
          path                   = user.path
          permissions_boundary   = user.permissions_boundary
        }
  ]
}


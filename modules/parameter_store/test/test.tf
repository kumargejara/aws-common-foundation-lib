module "parameter-store-create-test" {
  source = "../source"

  parameter_list = [
    {
      name = "test_param1",
      type = "String",
      value = "test"
    },
    {
      name = "test_param2",
      type = "StringList",
      value = "['test', 'test2', 'test']"
    },
    {
      name = "test_param3",
      type = "SecureString",
      value = "test#####$$$$"
    }
  ]
}


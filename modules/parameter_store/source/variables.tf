variable "parameter_list" {
  type = list(object({
    name  = string
    type  = string
    value = string
  }))
}

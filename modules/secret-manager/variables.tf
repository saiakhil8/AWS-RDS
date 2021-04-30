variable "tags"{
  type = map(string)
  description = "Tags to be attached to the instance"
}

variable "secret_name"{
    type = string
    description = "Name of the secret"
}
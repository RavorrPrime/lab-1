variable "a" {
  type = number
}

variable "b" {
  type = number
}

variable "sign" {
  type = string
}

locals {
  operations = {
   "+" = var.a + var.b
   "-" = var.a - var.b
   "*" = var.a * var.b
   "/" = var.b == 0 ? "Error" : var.a / var.b
  }
}

output "result" {
  value = lookup(local.operations,var.sign)
}
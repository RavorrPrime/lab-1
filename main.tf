variable "server-name" {
    type = string
    description = "Name of a server to provision"

}

variable "number-of-servers" {
    type = number
    description = "Required number of servers"

}

output "out" {
    value = var.server-name
}
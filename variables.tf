variable "name" {
  type = string
}

variable "key_name" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ingress_rules" {
  type = set(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = optional(string, "tcp")
  }))
}

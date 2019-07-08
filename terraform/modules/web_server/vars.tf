

#Bastion Host
variable hostname {}
variable size {}
variable key_pair {}
variable inbound_cidr_ssh {
    type = "list"
    default = ["0.0.0.0/0"]
}

variable inbound_cidr_frontend {
    type = "list"
    default = ["0.0.0.0/0"]
}

# Tags
variable tag_map {
    type = "map"
    default = {}
}
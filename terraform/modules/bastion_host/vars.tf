

#Bastion Host
variable hostname {}
variable ami {}
variable key_pair {}
variable inbound_cidr {}


# Tags
variable tag_map {
    type = "map"
    default = {}
}
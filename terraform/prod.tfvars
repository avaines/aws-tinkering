# prod.tfvars

env_name = "prod"
aws_account_id = "623152099147"
aws_account_name = "awstinkering"    
aws_region = "us-east-1"

# Tags
tag_owner = "Aiden Vaines"
tag_version = "1.0"
tag_start_stop_auto = false
tag_start_time = ""
tag_end_time = ""


# Web-Server
instance_size = "t2.micro"
inbound_cidr_ssh = ["0.0.0.0/0"]
inbound_cidr_frontend = ["0.0.0.0/0"]


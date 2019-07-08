# prod.tfvars

# Global
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

# Test-VM
    # Bastion-host
    bastion_size = "t2.micro"
    bastion_ami = "ami-0b898040803850657"
    bastion_key_pair = "Keypair"

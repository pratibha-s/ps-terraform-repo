provider "aws" {
  profile = var.profile
  region = var.region
}

output "ami" {
  value = aws_instance.example_prov_PS.ami
}

output "private_ip" {
  value = aws_instance.example_prov_PS.private_ip
}

output "public_ip" {
  value = aws_instance.example_prov_PS.public_ip
}

resource "aws_key_pair" "example_provision_PS" {
  key_name = var.key_name
  public_key = file("~/.ssh/terraform.pub")
}

resource "aws_instance" "example_prov_PS" {
  key_name = aws_key_pair.example_provision_PS.key_name
  ami = var.amis[var.region]
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id
  tags = {
    Name = "WebserverByTerraform"
  }

}
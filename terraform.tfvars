region = "us-east-1"
instance_type = "t2.micro"
vpc_security_group_ids = ["sg-0955de2f8ee4198ff"]
subnet_id = "subnet-00b850f44b9f0a504"
profile = "opsdev"
key_name = "examplekey"
//  create an instance with: ami-0e4bba886a574c2d8 same as looker-alpha-1a
//  ssh -v -i .ssh/psexperiment.pem centos@ipaddress
amis = {
  "us-east-1" = "ami-0e4bba886a574c2d8"
}
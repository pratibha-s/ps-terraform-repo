
variable region {}
variable instance_type {}
variable profile {}
variable vpc_security_group_ids {
  type = list
}
variable key_name {}
variable subnet_id {}
variable amis {
  type = map
}
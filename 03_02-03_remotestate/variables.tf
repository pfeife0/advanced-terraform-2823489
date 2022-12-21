# //////////////////////////////
# VARIABLES
# //////////////////////////////

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_tags" {
  type = map(any)
  default = {
    "environment" = "dev"
  }
}

# //////////////////////////////
# OUTPUT
# //////////////////////////////
output "instance-ip" {
  value = module.ec2_cluster.public_ip
}
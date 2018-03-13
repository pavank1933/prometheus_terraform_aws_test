variable "region" {
  default = "us-east-1"
}
variable "AmiLinux" {
  type = "map"
  default = {
    us-east-1 = "ami-97785bed" # Virginia
    us-west-2 = "ami-5ec1673e" # Oregon
    eu-west-1 = "ami-9398d3e0" # Ireland
    us-east-2 = "ami-ea87a78f" # Ohio
  }
  description = "Change the AMI's. I add only 3 regions (Virginia, Oregon, Ireland) to show the map feature but you can add all the regions that you need"
}
variable "Ubuntu" {
  type = "map"
  default = {
    us-east-1 = "ami-66506c1c" # Virginia
    us-west-2 = "ami-5ec1673e" # Oregon
    eu-west-1 = "ami-9398d3e0" # Ireland
    us-east-2 = "ami-ea87a78f" # Ohio
  }
  description = "Change the AMI's. I add only 3 regions (Virginia, Oregon, Ireland) to show the map feature but you can add all the regions that you need"
}
variable "vpc-fullcidr" {
    default = "172.28.0.0/16"
  description = "the vpc cdir"
}
variable "Subnet-Public-AzA-CIDR" {
  default = "172.28.0.0/24"
  description = "the cidr of the subnet"
}
variable "Subnet-Private-AzA-CIDR" {
  default = "172.28.3.0/24"
  description = "the cidr of the subnet"
}
variable "key_name" {
  default = "IOT-Pavan-Keypair"
  description = "the ssh key to use in the EC2 machines"
}
variable "DnsZoneName" {
  default = "icloudnow.internal"
  description = "the internal dns name"
}

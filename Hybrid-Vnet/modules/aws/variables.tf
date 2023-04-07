variable "cidr_block" {
  type = string
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr" {
  type = string
  description = "The CIDR block for the subnet"
}

variable "az" {
  type = string
  description = "The availability zone for the subnet"
}
variable "cidr_block" {
  type = string
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr" {
  type = string
  description = "The CIDR block for the subnet"
}

variable "location" {
  type = string
  description = "The location for the resources"
}

variable "resource_group_name" {
  type = string
  description = "The resource group name for the resources"
}

variable "provision_azure_resource" {
  type = bool
  default = true
}

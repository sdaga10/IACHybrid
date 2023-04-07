variable "aws_access_key" {
  type = string
  default = "****"
}

variable "aws_secret_key" {
  type = string
  default = "****"
}

variable "azure_subscription_id" {
  type = string
  default = "****"
}

variable "azure_client_id" {
  type = string
  default = "****"
}

variable "azure_client_secret" {
  type = string
  default = "****"
}

variable "azure_tenant_id" {
  type = string
  default = "****"
}

variable "aws_region" {
  type = string
}

variable "cidr_block" {
  type = string
  description = "The CIDR block for the VPC"
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type = string
  description = "The CIDR block for the subnet"
  default = "10.0.1.0/24"
}

variable "az" {
  type = string
  description = "The availability zone for the subnet"
  default = "us-west-2a"
}

variable "location" {
  type = string
  description = "The location for the resources"
  default = "North Central US"
}

variable "resource_group_name" {
  type = string
  description = "The resource group name for the resources"
  default = "sddemo"
}
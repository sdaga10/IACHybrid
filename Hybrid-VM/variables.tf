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

variable "aws_vm_name" {
  type = string
  default = "myhybrid"
}

variable "aws_vm_type" {
  type = string
  default = "t2.micro"
}

variable "aws_vm_image" {
  type = string
  default = "ami-005e54dee72cc1d00"
}


variable "azure_vm_name" {
  type = string
  default = "sdhyb"
}

variable "azure_vm_type" {
  type = string
  default = "Standard_DS1_v2"
}




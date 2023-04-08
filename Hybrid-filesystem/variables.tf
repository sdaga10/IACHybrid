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
  default = "us-west-2"
}

variable "share_name" {
  type    = string
  default = "myfileshare"
}

variable "creation_token" {
  type = string
  default = "myproduct"
}

variable "rg_name" {
  type    = string
  default = "sddemo2"
}

variable "location" {
  type    = string
  default = "northcentralus"
}
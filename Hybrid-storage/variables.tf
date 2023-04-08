
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
  default = "a3b0c3f1-86a7-4d6e-926f-6e09db85c4aa"
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

variable "bucket_name" {
  type = string
  default = "mysddemo"
}

variable "storage_name" {
  type = string
  default = "mysddemo"
}

variable "resource_group_name" {
  type = string
  default = "sddemo"
}

variable "location" {
  type = string
  default = "North Central US"
}
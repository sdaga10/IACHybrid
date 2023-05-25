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
  default = "us-east-1"
}

variable "name" {
  type    = string
  default = "my-aks-cluster"
}

variable "location" {
  type    = string
  default = "northcentralus"
}

variable "provision_aws_resource" {
  type = bool
  default = false
}

variable "provision_azure_resource" {
  type = bool
  default = true
}

variable "cluster_name" {
  type    = string
  default = "my-eks-cluster"
}

variable "node_group_name" {
  type    = string
  default = "my-node-group"
}


variable "subnet_ids" {
  type    = list
  default = ["subnet-075a8dbde6e2b1023","subnet-04fe72b382e894bf6"]
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "node_group_min_size" {
  type    = number
  default = 2
}

variable "node_group_max_size" {
  type    = number
  default = 5
}
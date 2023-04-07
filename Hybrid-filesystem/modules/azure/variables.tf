

variable "rg_name" {
  type    = string
  default = "sddemo2"
}

variable "location" {
  type    = string
  default = "northcentralus"
}

variable "vnet_name" {
  type    = string
  default = "myvpc"
}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type    = string
  default = "mysubnet"
}

variable "address_prefix" {
  type    = string
  default = "10.0.1.0/24"
}

variable "sa_name" {
  type    = string
  default = "myfilesystemsd"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "share_name" {
  type    = string
  default = "myfileshare"
}

variable "quota" {
  type    = string
  default = "100"
}



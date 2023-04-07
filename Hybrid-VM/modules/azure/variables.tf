variable "vm_name" {
  type = string
  default = "sdhyb"
}

variable "vm_type" {
  type = string
  default = "Standard_DS1_v2"
}

variable "location" {
  type = string
  default = "North Central US"
}

variable "resource_group_name" {
  type = string
  default = "sddemo"
}



variable "vm_image_publisher" {
  type = string
  default = "Canonical"
}

variable "vm_image_offer" {
  type = string
  default = "UbuntuServer"
}

variable "vm_image_sku" {
  type = string
  default = "16.04-LTS"
}

variable "vm_image_version" {
  type = string
  default = "latest"
}

variable "admin_username" {
  type = string
  default = "testadmin"
}

variable "admin_password" {
  type = string
  default = "Password1234!"
}
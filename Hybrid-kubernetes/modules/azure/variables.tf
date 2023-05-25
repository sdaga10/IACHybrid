variable "name" {
  type = string
  default = "my-aks-cluster"
}

variable "location" {
  type = string
  default = "northcentralus"
}

variable "node_count" {
  type = number
  default = 3
}

variable "node_vm_size" {
  type = string
  default = "Standard_DS2_v2"
}
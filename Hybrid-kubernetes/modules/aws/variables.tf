##### variables.tf

variable "cluster_name" {
  type    = string
  default = "my-eks-cluster"
}

variable "subnet_ids" {
  type    = list
  default = []
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "node_group_name" {
  type    = string
  default = "my-node-group"
}

variable "node_group_min_size" {
  type    = number
  default = 2
}

variable "node_group_max_size" {
  type    = number
  default = 5
}
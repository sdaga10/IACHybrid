
output "aws_vpc_id" {
  value = var.provision_aws_resource ? module.aws[0].vpc_id : 0
}

output "azure_vnet_id" {
  value = var.provision_azure_resource ? module.azure[0].vnet_id : 0
}

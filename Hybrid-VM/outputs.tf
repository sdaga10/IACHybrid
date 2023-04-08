output "aws_vm_public_ip" {
  value = var.provision_aws_resource ? module.aws_vm[0].vm_public_ip : 0
}

output "azure_vm_public_ip" {
  value = var.provision_azure_resource ?  module.azure_vm[0].vm_public_ip : 0
}
output "aws_vm_public_ip" {
  value = module.aws_vm.vm_public_ip
}

output "azure_vm_public_ip" {
  value = module.azure_vm.vm_public_ip
}
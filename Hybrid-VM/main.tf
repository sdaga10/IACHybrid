
module "aws_vm" {
  count = var.provision_aws_resource ? 1: 0
  source = "./modules/aws"
  vm_name = var.aws_vm_name
  vm_type = var.aws_vm_type
  vm_image = var.aws_vm_image

}

module "azure_vm" {
  count = var.provision_azure_resource ? 1 :0
  source = "./modules/azure"
  vm_name = var.azure_vm_name
  vm_type = var.azure_vm_type
  
}
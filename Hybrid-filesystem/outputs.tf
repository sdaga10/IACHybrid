output "aws_efs_filesystem_id" {
  value = var.provision_aws_resource ? module.aws[0].efs_filesystem_id :  0
}

output "azure_file_share_url" {
  value = var.provision_azure_resource ? module.azure[0].file_share_url : 0
}

##### outputs.tf

output "efs_filesystem_id" {
  value = aws_efs_file_system.efs.id
  description = "The EFS file system ID"
}
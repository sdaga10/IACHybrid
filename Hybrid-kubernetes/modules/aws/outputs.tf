##### outputs.tf

output "cluster_id" {
  value = aws_eks_cluster.my-cluster.id
}
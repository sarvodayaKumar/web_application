output "eks_cluster_endpoint" {
  value = aws_eks_cluster.k8s_cluster.endpoint
}

output "eks_cluster_ca" {
  value = aws_eks_cluster.k8s_cluster.certificate_authority[0].data
}

output "eks_cluster_name" {
  value = aws_eks_cluster.k8s_cluster.name
}

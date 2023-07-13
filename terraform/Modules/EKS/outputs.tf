output "cluster_name" {
  value = aws_eks_cluster.jobleads_cluster.name
}

output "eks_cluster_sg_id" {
  value = [aws_eks_cluster.jobleads_cluster.vpc_config[0].cluster_security_group_id]
}

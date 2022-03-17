output "eks_cluster_arn" {
  value       = module.aws_eks.cluster_arn
  description = "AWS EKS Cluster ARN"
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}
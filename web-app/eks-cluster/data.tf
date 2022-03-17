
data "aws_eks_cluster" "cluster" {
  name = module.aws_eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.aws_eks.cluster_id
}
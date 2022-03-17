
data "aws_eks_cluster" "cluster" {
  name  = "appstellar-devops-training"
}

data "aws_eks_cluster_auth" "cluster" {
  name  = "appstellar-devops-training"
}


data "aws_lb" "aws_load_balancer" {
  tags = {
    "elbv2.k8s.aws/cluster" = data.aws_eks_cluster.cluster.id
  }
}
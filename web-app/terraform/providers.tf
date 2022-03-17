
# provider "kubernetes" {
#   config_path    = "~/.kube/config"
#   config_context = "minikube"
# }

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "arn:aws:eks:eu-central-1:313422618945:cluster/appstellar-devops-training"
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
resource "kubernetes_namespace" "namespace" {
  for_each = toset(local.users)
  metadata {
    name = each.value
  }
  depends_on = [
    module.aws_eks
  ]
}
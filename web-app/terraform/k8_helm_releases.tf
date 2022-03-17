resource "helm_release" "api" {
  name  = "api"
  chart = "../helm/api"

  namespace = var.user

  values = [
    "${templatefile("../helm/api/values.yaml", {
      api_subdomain = "api.${var.user}.appstellar.training"
    })}"
  ]

#   depends_on = [
#     kubernetes_namespace.services
#   ]
}
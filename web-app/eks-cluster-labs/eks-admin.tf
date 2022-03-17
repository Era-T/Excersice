resource "null_resource" "eks_admin_deployment" {
  triggers = {
    manifest_sha1 = "${sha1(file("${path.module}/manifests/eks-admin.yaml"))}"
  }

  provisioner "local-exec" {
    command = "kubectl apply -f ${path.module}/manifests/eks-admin.yaml"
  }
}
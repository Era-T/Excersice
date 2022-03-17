# Storage class, defining storage provisoner
resource "kubernetes_storage_class" "aws_ebs_gp2" {
  metadata {
    name = "aws-ebs-gp2"
    annotations = {
      "storageclass.kubernetes.io/is-default-class" = "true"
    }
  }
  storage_provisioner    = "kubernetes.io/aws-ebs"
  reclaim_policy         = "Retain"
  allow_volume_expansion = true
  mount_options          = ["debug"]
  volume_binding_mode    = "WaitForFirstConsumer"
  parameters = {
    type   = "gp2"
    fsType = "ext4"
  }
}
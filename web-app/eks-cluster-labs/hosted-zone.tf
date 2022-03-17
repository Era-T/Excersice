resource "aws_route53_zone" "appstellar_training" {
  name = "appstellar.training"
  comment = "Public hosted zone for appstellar.training"
}
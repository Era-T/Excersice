resource "aws_route53_record" "api_dns_record" {
  for_each = toset(local.users)
  zone_id = aws_route53_zone.appstellar_training.zone_id
  name    = "api.${each.value}.appstellar.training"
  type    = "A"

  alias {
    name                   = data.aws_lb.aws_load_balancer.dns_name
    zone_id                = data.aws_lb.aws_load_balancer.zone_id
    evaluate_target_health = true
  }
}
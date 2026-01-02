output "alb_dns" {
  value = aws_lb.alb.dns_name
}

output "cloudfront_url" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

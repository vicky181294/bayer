output "alb_dns" {
  value = aws_lb.app_lb1.dns_name
}

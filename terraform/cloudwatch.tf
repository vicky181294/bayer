resource "aws_cloudwatch_log_group" "cw_log_group" {
  name              = var.log_group_name
  retention_in_days = 30

  tags = var.default_tags

}
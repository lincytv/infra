data "aws_caller_identity" "current" {}

resource "aws_cloudtrail" "weinvest-audit-cloudtrail-v2" {
  name                          = "${var.cloudtrail_name}"
  s3_bucket_name                = "${var.cloudtrail_bucket}"
  #s3_key_prefix                 = "prefix"
  include_global_service_events = false
}
output "cloudtrail_name" {
  value = "${aws_cloudtrail.weinvest-audit-cloudtrail-v2.name}"
}
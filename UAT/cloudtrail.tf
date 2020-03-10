module "cloud_trail" {
  source  = "../module/cloudtrail"
  #name    = "${module.cloudtrail_name}"
  #cloudtrail_bucket            = "weinvest-audit-cloudtrail"
}
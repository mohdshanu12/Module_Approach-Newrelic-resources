module "dashboard_module-1" {
  source            = "./For-each"
  dashboard_configs = var.dashboard_configs-1
  account_id        = var.account_id
  api_key           = var.api_key
  // permission=var.permission
}
module "dashboard_module-2" {
  source            = "./For-each"
  dashboard_configs = var.dashboard_configs-2
  account_id        = var.account_id
  api_key           = var.api_key
}
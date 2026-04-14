terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
  }
  required_version = ">=1.9.0"
}

module "sqldbserver" {
  source  = "app.terraform.io/ramanuja-org/sqldbserver/azurerm"
  version = "1.1.0"
  # insert required variables here

  compute_tier                         = var.compute_tier
  location                             = var.location
  ltr_monthly_retention                = var.ltr_monthly_retention
  ltr_week_of_year                     = var.ltr_week_of_year
  ltr_weekly_retention                 = var.ltr_weekly_retention
  ltr_yearly_retention                 = var.ltr_yearly_retention
  pitr_diff_backup_interval_in_hours   = var.pitr_diff_backup_interval_in_hours
  pitr_retention_days                  = var.pitr_retention_days
  resource_group_name                  = var.resource_group_name
  sku_tier                             = var.sku_tier
  sql_azuread_login                    = var.sql_azuread_login
  sql_db_name                          = var.sql_db_name
  sql_local_admin_password             = var.sql_local_admin_password
  sql_local_admin_username             = var.sql_local_admin_username
  sql_server_name                      = var.sql_server_name
}
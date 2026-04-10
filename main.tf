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
  compute_tier = "serverless"
  location = "centralindia"
  ltr_monthly_retention = "P1M"
  ltr_week_of_year = 1
  ltr_weekly_retention = "P1W"
  ltr_yearly_retention = "P1Y"
  pitr_diff_backup_interval_in_hours = 12
  pitr_retention_days = 7
  resource_group_name = "test-sql-rg"
  sku_tier = "GeneralPurpose"
  sql_azuread_login = "vikram@wtest658gmail.onmicrosoft.com"
  sql_db_name = "test-sql-db"
  sql_local_admin_password = "P@$$word#123"
  sql_local_admin_username = "azureuser"
  sql_server_name = "test-sql-server"
}
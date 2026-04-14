variable "compute_tier" {
  description = "Compute tier for SQL database (e.g., serverless, provisioned)"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "ltr_monthly_retention" {
  description = "Long-term retention monthly policy (ISO 8601 format)"
  type        = string
}

variable "ltr_week_of_year" {
  description = "Week of year for yearly backup retention"
  type        = number
}

variable "ltr_weekly_retention" {
  description = "Long-term retention weekly policy (ISO 8601 format)"
  type        = string
}

variable "ltr_yearly_retention" {
  description = "Long-term retention yearly policy (ISO 8601 format)"
  type        = string
}

variable "pitr_diff_backup_interval_in_hours" {
  description = "Differential backup interval in hours"
  type        = number
}

variable "pitr_retention_days" {
  description = "Point-in-time restore retention days"
  type        = number
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "sku_tier" {
  description = "SKU tier for SQL database (e.g., GeneralPurpose, BusinessCritical)"
  type        = string
}

variable "sql_azuread_login" {
  description = "Azure AD admin login for SQL server"
  type        = string
}

variable "sql_db_name" {
  description = "SQL database name"
  type        = string
}

variable "sql_local_admin_username" {
  description = "SQL local admin username"
  type        = string
}

variable "sql_local_admin_password" {
  description = "SQL local admin password"
  type        = string
  sensitive   = true
}

variable "sql_server_name" {
  description = "SQL server name"
  type        = string
}
variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the RDS resources"
}

variable "update_rds_endpoint" {
  type    = bool
  default = true
}

variable "region" {
  type        = string
  description = "Region of the rds"
}

variable "environment" {
  description = "The environment name for the resources."
}

variable "owner" {
  type        = string
  description = "Name of the owner for this RDS"
}

variable "application" {
  type        = string
  description = "Name of the application"
}

variable "sg_name" {
  type        = string
  description = "RDS security group name"
}

variable "cidr_block" {
  type    = list(string)
  description = "CIDR block for RDS security group"
}

variable "cost_center" {
  type        = string
  description = "Name of cost-center for this RDS"
}

variable "db_username" {
  description = "The username for the RDS database"
  type    = string
}

variable "set_secret_manager_password" {
  description = "To enable master user password or not"
  type    = bool
  default = false
}

variable "db_password" {
  description = "Password for RDS"
  type    = string
}

variable "db_name" {
  description = "The identifier for the RDS instance"
  type    = string
}

variable "db_instance_class" {
  description = "The RDS instance class"
  type    = string
}

variable "set_db_password" {
  description = "Condition to check for custom password"
  type = string
}

variable "db_storage_size" {
  description = "The allocated storage size for the RDS instance."
  type        = number
}

variable "backup_retention_period" {
  description = "The number of days to retain automated backups."
  type        = number
}

variable "multi_az" {
  description = "Enable multi-AZ deployment for the RDS instance."
  type        = bool
}

variable "delete_automated_backups" {
  description = "Enable deletion of automated backups when the RDS instance is deleted."
  type        = bool
}

variable "copy_tags_to_snapshot" {
  description = "Copy tags to DB snapshots created from the RDS instance."
  type        = bool
}

variable "publicly_accessible" {
  description = "Allow the RDS instance to be publicly accessible."
  type        = bool
}

variable "skip_final_snapshot" {
  description = "Skip the creation of a final DB snapshot when the RDS instance is deleted."
  type        = bool
}

variable "apply_immediately" {
  description = "Apply changes immediately to the RDS instance."
  type        = bool
}
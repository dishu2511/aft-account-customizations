variable "aws_region" {
  description = "The region from which this module will be executed. This MUST be the same region as Control Tower is deployed."
  type        = string
  validation {
    condition     = can(regex("(us(-gov)?|ap|ca|cn|eu|sa)-(central|(north|south)?(east|west)?)-\\d", var.ct_home_region))
    error_message = "Variable var: region is not valid."
  }
  default = "ap-southeast-2"
}

variable "ct_management_account_id" {
  description = "Control Tower Management Account Id"
  type        = string
  validation {
    condition     = can(regex("^\\d{12}$", var.ct_management_account_id))
    error_message = "Variable var: ct_management_account_id is not valid."
  }
  default = "783850804190"
}

variable "ct_management_account_email" {
  description = "email id of the account"
  default     = "aws-aft-master@datacom.co.nz"
}

variable "log_archive_account_id" {
  description = "Log Archive Account Id"
  type        = string
  validation {
    condition     = can(regex("^\\d{12}$", var.log_archive_account_id))
    error_message = "Variable var: log_archive_account_id is not valid."
  }
  default = "004187183519"
}
variable "log_archive_account_email" {
  description = "email id of the account"
  default     = "dineshsharma2511+aftlogarchive@gmail.com"
}

variable "log_archive_account_id" {
  description = "Log Archive Account Id"
  type        = string
  validation {
    condition     = can(regex("^\\d{12}$", var.log_archive_account_id))
    error_message = "Variable var: log_archive_account_id is not valid."
  }
  default = "004187183519"
}
variable "log_archive_account_email" {
  description = "email id of the account"
  default     = "dineshsharma2511+aftlogarchive@gmail.com"
}

variable "aft_management_account_id" {
  description = "AFT Management Account ID"
  type        = string
  validation {
    condition     = can(regex("^\\d{12}$", var.aft_management_account_id))
    error_message = "Variable var: aft_management_account_id is not valid."
  }
  default = "930223702363"
}

variable "aft_management_account_email" {
  description = "email id of the account"
  default     = "dineshsharma2511+aft-management@gmail.com"
}

variable "development_account_id" {
  description = "Deveopment Account Id"
  type        = string
  validation {
    condition     = can(regex("^\\d{12}$", var.development_account_id))
    error_message = "Variable var: development_account_id is not valid."
  }
  default = "801098250215"
}

variable "development_account_email" {
  description = "email id of the account"
  default     = "ineshsharma2511+aft-development@gmail.com"
}


resource "aws_securityhub_account" "main" {
}

resource "aws_securityhub_organization_configuration" "enable" {
  #provider    = aws.audit
  auto_enable = true

}

resource "aws_securityhub_standards_subscription" "pci_321" {
  depends_on = [
    aws_securityhub_organization_configuration.enable
  ]
  #provider      = aws.audit
  standards_arn = "arn:aws:securityhub:${var.aws_region}::standards/pci-dss/v/3.2.1"
}

resource "aws_securityhub_standards_subscription" "cis" {
  depends_on = [
    aws_securityhub_organization_configuration.enable
  ]
  #provider      = aws.audit
  standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
}

# enabling and adding SecurityHub in log archive account
resource "aws_securityhub_member" "log_archive" {
  #provider   = aws.audit
  account_id = var.log_archive_account_id
  email      = var.log_archive_account_email
  invite     = false
  lifecycle {
    ignore_changes = [invite, email]
  }
}


# enabling and adding SecurityHub in master account
resource "aws_securityhub_member" "master" {
  #provider   = aws.audit
  account_id = var.ct_management_account_id
  email      = var.ct_management_account_email
  invite     = false
  lifecycle {
    ignore_changes = [invite, email]
  }
}

# enabling and adding SecurityHub in aft management account
resource "aws_securityhub_member" "aft_management" {
  #provider   = aws.audit
  account_id = var.aft_management_account_id
  email      = var.aft_management_account_email
  invite     = false
  lifecycle {
    ignore_changes = [invite, email]
  }
}

# enabling and adding SecurityHub in development account
resource "aws_securityhub_member" "development" {
  #provider   = aws.audit
  account_id = var.development_account_id
  email      = var.development_account_email
  invite     = false
  lifecycle {
    ignore_changes = [invite, email]
  }
}

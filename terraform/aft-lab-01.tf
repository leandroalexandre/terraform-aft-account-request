module "aft-lab-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "danilommonteiro+aft-lab01@outlook.com"
    AccountName               = "aft-lab-01"
    ManagedOrganizationalUnit = "labs"
    SSOUserEmail              = "danilommonteiro+aft@outlook.com"
    SSOUserFirstName          = "Account"
    SSOUserLastName           = "Lab-01"
  }

  account_tags = {
    "Learn Tutorial" = "AFT-001"
  }

  change_management_parameters = {
    change_requested_by = "Security Automation"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "aft-lab-01"
}

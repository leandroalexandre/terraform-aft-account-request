module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "danilommonteiro+lab-01@outlook.com"
    AccountName               = "account-lab-01"
    ManagedOrganizationalUnit = "labs"
    SSOUserEmail              = "danilommonteiro+aft@outlook.com"
    SSOUserFirstName          = "Account"
    SSOUserLastName           = "Lab-01"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Security Automation"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

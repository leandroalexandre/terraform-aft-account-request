module "account-lab-02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "danilommonteiro+lab-02@outlook.com"
    AccountName               = "account-lab-02"
    ManagedOrganizationalUnit = "labs"
    SSOUserEmail              = "danilommonteiro+aft@outlook.com"
    SSOUserFirstName          = "Account"
    SSOUserLastName           = "Lab-02"
  }

  account_tags = {
    "Learn Tutorial" = "AFT-02"
  }

  change_management_parameters = {
    change_requested_by = "Security Automation"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "account-lab-02"
}

# ---------------------------------------------------------------------------------------------------------------
# Object that contains a list of key value pairs that forms the tags added to a VPC on creation
# ---------------------------------------------------------------------------------------------------------------
locals {
  default_tags = {
    Name                 = join("-", [var.Application_Name, var.Environment_Type])
    Application_ID       = var.Application_ID
    Application_Name     = var.Application_Name
    Business_Unit        = var.Business_Unit
    CostCenterCode       = var.CostCenterCode
    CreatedBy            = var.CreatedBy
    Manager              = var.Manager
    Supported_Networks   = var.Supported_Networks
    Environment_Type     = var.Environment_Type
    Deployed_By          = "HashiCorp-Terraform"
  }
}


resource "aws_networkmanager_global_network" "myGlobalNetwork" {
  description = "An AWS Network Manager for this global network."
  # tags = {
  #           "Key": "Name",
  #           "Value": var.network_manager_name 
  #       }
  tags =  local.default_tags
}



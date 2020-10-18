/* 
Copyright 2020 José Mnauel Ortega Falcón
*/

/* Before, you need create: 
      + resource group,
      + storage account, 
      + container 
   from the Azure Portal.
*/
terraform {
  backend "azurerm" {
    resource_group_name  = "etproweurgterraform001"  
    storage_account_name = "etproweusastate001"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    access_key           = "<here_your_access_key>"
  }
}

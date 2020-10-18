/* 
Copyright 2020 José Mnauel Ortega Falcón
*/

module "infrastructure_base_resource_groups" {
    source = "git::https://github.com/jortfal/azure_resource_group.git?ref=v3.0.0"

    # Data Sources Input Variables
    
    # Module Variables
    
    rgs = [
      {
        name     = "etdevweurgcommon001"
        location = var.default_location
        tags     = {
          owner       = "jortfal"
          environment = "development"
        }
      },
      {
        name     = "etdevweurgnetwork001"
        location = var.default_location
        tags     = {
          owner       = "jortfal"
          environment = "development"
        }
      },
      {
        name     = "etintweurgcommon001"
        location = var.default_location
        tags     = {
          owner       = "jortfal"
          environment = "integration"
        }
      },
      {
        name     = "etintweurgnetwork001"
        location = var.default_location
        tags     = {
          owner       = "jortfal"
          environment = "integration"
        }
      },
      {
        name     = "etproweurgcommon001"
        location = var.default_location
        tags     = {
          owner       = "jortfal"
          environment = "production"
        }
      },
      {
        name     = "etprodweurgnetwork001"
        location = var.default_location
        tags     = {
          owner       = "jortfal"
          environment = "production"
        }
      }
    ]
}

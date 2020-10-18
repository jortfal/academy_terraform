/* 
Copyright 2020 José Mnauel Ortega Falcón
*/

module "infrastructure_base_etdevweurgcommon001" {
    source = "git::https://github.com/jortfal/azure_resource_group.git?ref=v2.0.2"

    # Global Variables

    location = var.default_location

    # Data Sources Input Variables
    
    # Module Variables
    
    name = "etdevweurgcommon001"
    tags = {
      environment = "development"
      owner       = "jortfal"
    }
}

module "infrastructure_base_etdevweurgnetwork001" {
    source = "git::https://github.com/jortfal/azure_resource_group.git?ref=v2.0.2"

    # Global Variables

    location = var.default_location

    # Data Sources Input Variables
    
    # Module Variables
    
    name = "etdevweurgnetwork001"
    tags = {
      environment = "development"
      owner       = "jortfal"
    }
}

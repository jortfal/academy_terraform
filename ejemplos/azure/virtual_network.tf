/* 
Copyright 2020 José Mnauel Ortega Falcón
*/

module "infrastructure_base_virtual_network" {
    source = "git::https://github.com/jortfal/azure_virtual_network?ref=v2.0.0"

    # Global Variables

    # Data Sources Input Variables
    
    resource_group_name = "etdevweurgnetwork001"

    # Module Variables

    name          = "etdevweuvnhub001"
    
    address_space = ["172.16.0.0/16"]
    
    subnets       = [
      {
        name = "etdevweusbnsvc001"
        address_prefix = "172.16.0.0/24"
      },
      {
        name = "etdevweusbnmgt001"
        address_prefix = "172.16.1.0/24"
      },
      {
        name = "etdevweusbnmnt001"
        address_prefix = "172.16.2.0/24"
      },
      {
        name = "etdevweusbnaks001"
        address_prefix = "172.16.3.0/24"
      }
    ]
  
    tags = {
      environment = "development"
      owner       = "jortfal"
    }
}

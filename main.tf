terraform {
  required_providers {
    catalystcenter = {
      source  = "CiscoDevNet/catalystcenter"
      version = "0.3.0"
    }
  }
}

provider "catalystcenter" {
  username    = "devnetuser"
  password    = "Cisco123!"
  url         = "https://sandboxdnac2.cisco.com"
  max_timeout = 600
}

module "catalyst_center" {
  source  = "netascode/nac-catalystcenter/catalystcenter"
  version = "0.1.1"

  yaml_directories = ["data/"]
}
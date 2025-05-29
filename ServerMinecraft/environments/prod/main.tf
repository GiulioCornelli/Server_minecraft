terraform {
  required_providers {
    ansible = {
      source = "ansible/ansible"
      version = "1.3.0"
    }
  }
}

provider "ansible" {
  # Configuration options

}



provider "azurerm" {
  features {}
  subscription_id = "234c00bb-3e86-490b-97a3-e42d9536f19e"
}

module "minecraft_server" {
  source                      = "../../modules/minecraft_server"
  subscription_id             = "234c00bb-3e86-490b-97a3-e42d9536f19e"
  resource_group_name         = "MC-prod"
  location                    = "italynorth"
  vnet_name                   = "ScroblanxVNET-prod"
  address_space               = ["10.0.0.0/16"]
  subnet_name                 = "ScroblanxSubnet-prod"
  subnet_address_prefixes     = ["10.0.2.0/24"]
  public_ip_name              = "ScroblanxPublicIP-prod"
  network_interface_name      = "ScroblanxNIC-prod"
  network_security_group_name = "ScroblanxNSG-prod"
  vm_name                     = "ScroblanxVM-prod"
  vm_size                     = "Standard_B2ats_v2"
  admin_username              = "azureuser"
  ssh_public_key_path         = "C:\\Users\\Utente\\.ssh\\id_rsa.pub"
  image_publisher             = "Debian"
  image_offer                 = "debian-12"
  image_sku                   = "12"
}
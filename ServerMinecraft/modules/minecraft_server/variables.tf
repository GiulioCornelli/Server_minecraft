variable "subscription_id" {
  description = "The subscription ID where the resources will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "public_ip_name" {
  description = "The name of the public IP."
  type        = string
}

variable "public_ip_allocation_method" {
  description = "The allocation method for the public IP."
  type        = string
  default     = "Dynamic"
}

variable "public_ip_sku" {
  description = "The SKU for the public IP."
  type        = string
  default     = "Basic"
}

variable "network_interface_name" {
  description = "The name of the network interface."
  type        = string
}

variable "private_ip_allocation" {
  description = "The allocation method for the private IP."
  type        = string
  default     = "Dynamic"
}

variable "network_security_group_name" {
  description = "The name of the network security group."
  type        = string
}

variable "security_rules" {
  description = "List of security rules for the NSG."
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = [
    {
      name                       = "SSH"
      priority                   = 1001
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    {
      name                       = "Minecraft"
      priority                   = 1002
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "25565"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}

variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}

variable "disk_size_gb" {
  description = "The size of the OS disk in GB."
  type        = number
  default     = 30
}

variable "ssh_public_key_path" {
  description = "The file path to the SSH public key."
  type        = string
}

variable "image_publisher" {
  description = "The publisher of the image for the virtual machine."
  type        = string
}

variable "image_offer" {
  description = "The offer of the image for the virtual machine."
  type        = string
}

variable "image_sku" {
  description = "The SKU of the image for the virtual machine."
  type        = string
}
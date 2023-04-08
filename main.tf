resource "azurerm_resource_group" "app_grp" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "vm_provisioning" {
  source                        = "./modules/virtual_machine"
  virtual_network_name          = var.virtual_network_name
  subnet_name                   = var.subnet_name
  network_interface_name        = var.network_interface_name
  virtual_machine_name          = var.virtual_machine_name
  username                      = var.username
  public_ip_name                = var.public_ip_name
  resource_group_name           = azurerm_resource_group.app_grp.name
  resource_group_location       = azurerm_resource_group.app_grp.location
  local_file_name               = var.local_file_name
}

module "storing_private_key_in_storage_account" {
  source                  = "./modules/storage_account"
  depends_on              = [module.vm_provisioning]
  storage_account_name    = var.storage_account_name
  storage_container_name  = var.storage_container_name
  storage_blob_name       = var.storage_blob_name
  resource_group_name     = azurerm_resource_group.app_grp.name
  resource_group_location = azurerm_resource_group.app_grp.location
  local_file_name         = var.local_file_name
}

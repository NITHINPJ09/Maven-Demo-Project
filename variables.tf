variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}
variable "resource_group_location" {
  type        = string
  description = "Location of the Resource Group"
}
variable "virtual_network_name" {
  type        = string
  description = "Name of the Virtual Network"
}
variable "subnet_name" {
  type        = string
  description = "Name of the Subnet"
}
variable "network_security_group_name" {
  type        = string
  description = "Name of the Network Security Group"
}
variable "network_interface_name" {
  type        = string
  description = "Name of the Network Interface"
}
variable "virtual_machine_name" {
  type        = string
  description = "Name of the Virtual Machine"
}
variable "username" {
  type        = string
  description = "Name of the User"
}
variable "public_ip_name" {
  type        = string
  description = "Name of the Public IP"
}
variable "storage_account_name" {
  type        = string
  description = "Name of the Storage Account"
}
variable "storage_container_name" {
  type        = string
  description = "Name of the Storage Container"
}
variable "storage_blob_name" {
  type        = string
  description = "Name of the Storage Blob"
}
variable "local_file_name" {
  type        = string
  description = "Name of the Local File"
}

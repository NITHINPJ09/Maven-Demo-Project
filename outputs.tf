output "public_ip" {
  value = module.vm_provisioning.vm_public_ip.ip_address
}
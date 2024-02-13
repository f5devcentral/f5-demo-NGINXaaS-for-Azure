output "nginxaas_user_id" {
  description = "Managed user identity for the NGINXaaS deployment"
  value       = azurerm_user_assigned_identity.id_nginxaas.id
}

output "nginxaas_principal_id" {
  description = "Principal ID the NGINXaaS user identity."
  value       = azurerm_user_assigned_identity.id_nginxaas.principal_id
}

output "nginx_frontend_public_ip_id" {
  description = "ID of public IP address."
  value       = azurerm_public_ip.pip_ngxaas.id
}

output "nginx_frontend_public_ip" {
  description = "NGINXaaS public IP address."
  value       = azurerm_public_ip.pip_ngxaas.ip_address
}

output "nginx_subnet_id" {
  description = "The subnet ID delegated for the NGINXaaS deployment."
  value       = azurerm_subnet.nginx_subnet.id
}

output "linux_demoapp1_interface_id" {
  description = "Linux Demonstration application 1 Interface ID"
  value       = azurerm_network_interface.int_demo_app_1.id
}

output "linux_demoapp2_interface_id" {
  description = "Linux Demonstration application 2 Interface ID"
  value       = azurerm_network_interface.int_demo_app_2.id
}

output "container_subnet_id" {
  description = "Subnet ID defined for Containers deployment"
  value       = azurerm_subnet.container.id
}

output "azure_storage_acc_id" {
  description = "Storage account used for NGINXaaS system assisgned identity"
  value       = azurerm_storage_account.nginxaas_stgacc.id
}

output "azure_analytics_workplace_id" {
  description = "Azure Log Analytics Workspace ID for NGINXaaS logs"
  value       = azurerm_log_analytics_workspace.nginxaas_loganalytics.id
}
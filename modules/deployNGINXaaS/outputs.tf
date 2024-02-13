output "nginxaas_deployment_id" {
  description = "The ID for our NGINXaaS deployment"
  value       = azurerm_nginx_deployment.nginxaas-demo.id
}

output "nginxaas_deployment_object_guid" {
  description = "The System Assigned identity GUID"
  value       = azurerm_nginx_deployment.nginxaas-demo.identity[0].principal_id
}
resource "azurerm_nginx_deployment" "nginxaas-demo" {
  name                     = "nginxaas-${var.mypet}"
  resource_group_name      = var.resource_group_name
  sku                      = var.sku
  location                 = var.location
  diagnose_support_enabled = true

  identity {
    type = "SystemAssigned"
  }

  frontend_public {
    ip_address = [var.nginx_frontend_public_ip_id]
  }
  network_interface {
    subnet_id = var.nginx_subnet_id
  }

  tags = var.tags
}

resource "azurerm_monitor_diagnostic_setting" "nginxaas_monitor" {
  name               = "${azurerm_nginx_deployment.nginxaas-demo.name}-logs"
  target_resource_id = azurerm_nginx_deployment.nginxaas-demo.id
  storage_account_id = var.azure_storage_acc_id

  enabled_log {
    category = "NginxLogs"
  }
}

resource "azurerm_role_assignment" "nginxaas_monitoring" {
  scope                = azurerm_nginx_deployment.nginxaas-demo.id
  role_definition_name = "Monitoring Metrics Publisher"
  principal_id         = var.nginxaas_principal_id
}

resource "azurerm_role_assignment" "nginxaas_monitoring_app" {
  scope                = azurerm_nginx_deployment.nginxaas-demo.id
  role_definition_name = "Monitoring Metrics Publisher"
  principal_id         = azurerm_nginx_deployment.nginxaas-demo.identity[0].principal_id
}

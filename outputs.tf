output "demo_app_1_public_ip" {
  description = "The Public IP address for Linux VM demonstration application 1"
  value       = module.linux_vm_apps.linux_demoapp1_public_ip
}

output "demo_app_2_public_ip" {
  description = "The Public IP address for Linux VM demonstration application 2"
  value       = module.linux_vm_apps.linux_demoapp2_public_ip
}

output "my_public_ip" {
  description = "The public IP of the system running Terraform used in Security Group for access control"
  value       = data.external.myipaddr.result.ip
}

output "NGINX-ip_address" {
  description = "IP address of NGINXaaS deployment."
  value       = module.prerequisites.nginx_frontend_public_ip
}

output "nginx_default_config_id" {
  description = "NGINXaaS deployment default configuration ID"
  value       = "${module.deployNGINXaaS.nginxaas_deployment_id}/configurations/default"
}

output "resource_group_name" {
  description = "The resource group name under which all of our objects are deployed"
  value       = local.resource_group_name
}

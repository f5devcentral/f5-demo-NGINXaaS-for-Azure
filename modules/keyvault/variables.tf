variable "tags" {
  description = "Tags used on objects created"
  type        = map(any)
}

variable "location" {
  type        = string
  description = "Azure Region objects are deployed into"
}

variable "mypet" {
  type        = string
  description = "A unique string appended to object names"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "nginxaas_deployment_object_guid" {
  description = "Principal GUID for the NGINXaaS system user identity."
  type        = string
}

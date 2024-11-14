variable "resource_group" {
  description = "Nome do grupo de recursos no Azure"
  type        = string
}

variable "location" {
  description = "Localização do recurso no Azure"
  type        = string
}

variable "service_plan_name" {
  description = "Nome do plano de serviço"
  type        = string
  default     = "app-service-plan"
}

variable "web_app_name" {
  description = "Nome do Web App"
  type        = string
}

variable "sku_name" {
  description = "SKU do plano de serviço"
  type        = string
  default     = "F1"
}

variable "always_on" {
  description = "Define se o site deve estar sempre ligado"
  type        = bool
  default     = false
}

variable "dotnet_version" {
  description = "Versão do .NET a ser usada"
  type        = string
  default     = "7.0"
}

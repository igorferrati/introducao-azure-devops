# web app linux + .NET module

# Service plan
resource "azurerm_service_plan" "app_plan" {
  name                = var.service_plan_name
  location            = var.location
  resource_group_name = var.resource_group
  os_type             = "Linux"
  sku_name            = var.sku_name
}

# Web app
resource "azurerm_linux_web_app" "web_app" {
  name                = var.web_app_name
  resource_group_name = var.resource_group
  location            = var.location
  service_plan_id     = azurerm_service_plan.app_plan.id

  site_config {
    always_on = var.always_on
    application_stack {
      dotnet_version = var.dotnet_version
    }
  }
}

resource "azurerm_linux_web_app" "example" {
  name                = var.app_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    application_stack {
      node_version = "18-lts"
    }
  }
}
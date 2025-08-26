output "resource_group_name" {
  description = "Deployed resource group"
  value       = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  description = "Deployed storage account"
  value       = azurerm_storage_account.sa.name
}

variable "location" {
  description = "Azure region to deploy resources in"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "iac-rg"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    environment = "dev"
    project     = "iac-automation"
  }
}

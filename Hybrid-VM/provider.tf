terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.47.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}



provider "aws" {
  version = "3.42.0"
  region = "us-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

provider "azurerm" {
  features {}
  version = "3.47.0"
  subscription_id = var.azure_subscription_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
}

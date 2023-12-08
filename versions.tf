terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "~>1.6.5"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.30.0"
    }
  }
}
provider "aws" {
  region = "us-west-2"
  access_key = 
  secret_key = 
}

// initialize provider at account level for provisioning workspace with AWS PrivateLinkprovider "databricks" {
  host     = "https://accounts.cloud.databricks.com"
  username = var.databricks_account_username
  password = var.databricks_account_password
}

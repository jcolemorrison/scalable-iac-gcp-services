variable "tfc_organization" {
  type        = string
  description = "Terraform Cloud Organization name"
}

variable "scalable_core_tfc_workspace" {
  description = "Terraform Cloud workspace name for the core infrastructure"
  type        = string
}

variable "gcp_project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "project_name" {
  description = "default project name for grouping resources"
  type        = string
  default     = "scaling-iac-services"
}

variable "default_region" {
  description = "default region for the project deployment"
  type        = string
  default     = "us-west1"
}

variable "deployment_regions" {
  description = "regions to deploy"
  type        = list(string)
  default     = ["us-west1", "us-east1"]
}

variable "vpc_cidr_block" {
  description = "cidr block used to create the VPC network"
  type        = string
  default     = "10.1.0.0/16"
}

variable "app_service_account_id" {
  description = "value of the service account id passed to additional apps and services.  It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035."
  type        = string
  default     = "app-service"
}

variable "app_service_account_display_name" {
  description = "value of the service account display name."
  type        = string
  default     = "App service account"
}

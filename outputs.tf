output "app_service_account_email" {
  description = "The email of the app service account"
  value       = google_service_account.app_service.email
}

# output "default_service_backend" {
#   description = "Map with 'default' as the key and the self link of the default service backend as the value"
#   value       = { "default" = google_compute_backend_service.default_service.self_link }
# }

output "regional_vpc_connector_ids" {
  description = "Map of deployment regions to VPC connector IDs"
  value       = zipmap(var.deployment_regions, [for c in google_vpc_access_connector.vpc_connector : c.id])
}

output "vpc_self_link" {
  description = "The self link of the VPC"
  value       = google_compute_network.vpc_network.self_link
}

output "function_bucket_name" {
  description = "base function template bucket"
  value       = google_storage_bucket.function_base_template.name
}

output "function_service_account_email" {
  description = "base function template service account email"
  value       = google_service_account.function_base_template.email
}
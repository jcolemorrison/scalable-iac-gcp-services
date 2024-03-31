output "redis_service_account_email" {
  description = "The email of the redis reader service account"
  value       = google_service_account.redis_reader.email
}

output "default_service_backend" {
  description = "Self link of the default service backend"
  value       = google_compute_backend_service.default_service.self_link
}

output "regional_vpc_connector_ids" {
  description = "Map of deployment regions to VPC connector IDs"
  value       = zipmap(var.deployment_regions, [for c in google_vpc_access_connector.vpc_connector : c.id])
}
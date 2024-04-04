# Create a storage bucket
resource "google_storage_bucket" "function_base_template" {
  name                        = "${var.project_name}-fn-base-tpl"
  location                    = "US"
  uniform_bucket_level_access = true
}

# Create a service account
resource "google_service_account" "function_base_template" {
  account_id   = "fn-base-tpl"
  display_name = "Function Base Template Service Account"
  project      = var.project_name
}

# Give the service account objectAdmin permissions to the bucket
resource "google_storage_bucket_iam_member" "function_base_template" {
  bucket = google_storage_bucket.function_base_template.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:${google_service_account.function_base_template.email}"
}
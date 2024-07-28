module "bigquery" {
  source            = "terraform-google-modules/bigquery/google" # Path to the module
  version           = "~> 2.0.0" # Specify the version of the module you require
  dataset_id        = "foo"
  dataset_name      = "foo"
  description       = "some description" # updated the description accordingly
  project_id        = var.project_id
  location          = "EU" # Update location if needed
  time_partitioning = "DAY"
  dataset_labels    = {env = "dev"}
}

# define GCP compute engine name
variable "gcp_compute_name" {
  type        = string
  description = "The name of the Google compute engine to create"
}
# define GCP region
variable "gcp_region" {
  type        = string
  description = "GCP region"
}
# define GCP zone
variable "gcp_zone" {
  type        = string
  description = "GCP zone"
}
# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}
# GCP authentication file
variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
}
# GCP machine type
variable "gcp_machine_type" {
  type        = string
  description = "The machine type"
}
# GCP network interface
variable "gcp_network" {
  type        = string
  description = "The network interface"
}
# GCP storage bucket
variable "bucket_name" {
  type        = string
  description = "The name of the Google Storage Bucket to create"
}
# GCP storage class of bucket
variable "storage_class" {
  type        = string
  description = "The storage class of the Storage Bucket to create"
}
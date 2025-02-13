# Remote Backend for Local Deployment
terraform {
  backend "gcs" {
    bucket      = "fpw-global-gsb"
    prefix      = "terraform\tfsate"
    credentials = "fpw-credentials.json"
  }
}

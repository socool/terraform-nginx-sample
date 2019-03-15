# Global stuff
variable "project" {}
variable "project_stage" {}
variable "zone" {}
variable "deletion_protection" {}

# Proxy stuff
variable "proxy_name" {}
variable "proxy_nginx_name" {}
variable "proxy_nginx_image" {}
variable "proxy_nginx_subnetwork_name" {}

variable "proxy_nginx_machine_type" {
  default = "f1-micro"
}

variable "proxy_nginx_node_tags" {
  description = "Additional compute instance network tags for the nodes."
  type        = "list"
  default     = []
}

variable "proxy_nginx_disk_auto_delete" {
  description = "Whether or not the disk should be auto-deleted."
  default     = true
}

variable "proxy_nginx_disk_size_gb" {
  description = "The size of the image in gigabytes."
  default     = 10
}

variable "proxy_nginx_disk_type" {
  description = "The GCE disk type. Can be either pd-ssd, local-ssd, or pd-standard."
  default     = "pd-ssd"
}

variable "proxy_nginx_service_account_email" {
  description = "The email of the service account for the instance template."
  default     = ""
}

variable "proxy_nginx_service_account_scopes" {
  description = "List of scopes for the instance template service account"
  type        = "list"

  default = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
    "https://www.googleapis.com/auth/devstorage.full_control",
  ]
}

variable "proxy_nginx_startup_script_url" {
  default = "gs://[YOUR_BUCKET]/proxy-nginx-startup"
}
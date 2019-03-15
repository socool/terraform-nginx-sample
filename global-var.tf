variable "region" {
  default = "asia-southeast1"
}

variable "zone" {
  default = {
    a = "asia-southeast1-a",
    b = "asia-southeast1-b",
    c = "asia-southeast1-c"
  }
}

variable "project" {
  default = "[PROJECT_ID]"
}

variable "project_stage" {
  description = "Name stage of the project"
  default     = "beta"
}

variable "ssh_source_ranges" {
  description = "List of allow IP address to use this project."
  type        = "list"

  default = ["183.88.213.241/32"]
}

variable "deletion_protection" {
  default = false
}
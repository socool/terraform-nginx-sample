provider "google" { 
  region = "${var.region}"
  zone   = "${var.zone["a"]}"
}

provider "google-beta" { 
  region = "${var.region}"
  zone   = "${var.zone["a"]}"
}

data "google_project" "current" {}
data "google_compute_default_service_account" "default" {}

# output "bastion_instance" {
#   value = "${data.google_compute_region_instance_group.bastion.instances}"
#}
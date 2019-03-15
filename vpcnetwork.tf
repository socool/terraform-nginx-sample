resource "google_compute_network" "default" {
  name                    = "${var.network_name}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public" {
  description              = "Subnetwork for internet facing"
  name                     = "${var.subnetwork_name["public"]}"
  ip_cidr_range            = "${var.network_cidr["public"]}"
  network                  = "${google_compute_network.default.name}"
  region                   = "${var.region}"
  private_ip_google_access = true
}
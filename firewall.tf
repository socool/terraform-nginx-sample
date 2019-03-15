resource "google_compute_firewall" "computerlogy" {
  name    = "bcorpse-computerlogy"
  network = "${google_compute_network.default.name}"

  allow {
    protocol = "all"
  }

  source_ranges = ["183.88.213.241/32"]
}

resource "google_compute_firewall" "nginx" {
  name    = "bcorpse-nginx"
  network = "${google_compute_network.default.name}"

  allow {
    protocol = "tcp"
    ports = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["${var.firewall-stupid}"]
}
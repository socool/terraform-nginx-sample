resource "google_compute_instance" "proxy_nginx_default" {
  count                     = "1"
  name                      = "${var.project_stage}-${var.proxy_nginx_name}"
  zone                      = "${var.zone}"
  machine_type              = "${var.proxy_nginx_machine_type}"
  allow_stopping_for_update = true
  deletion_protection       = "${var.deletion_protection}"
  tags                      = ["${concat(list("${var.project_stage}-nat", "${var.project_stage}-${var.proxy_nginx_name}", "${var.proxy_name}"), var.proxy_nginx_node_tags)}"]

  boot_disk {
    auto_delete = "${var.proxy_nginx_disk_auto_delete}"
    initialize_params {
      image = "${var.project}/${var.proxy_nginx_image}"
      size  = "${var.proxy_nginx_disk_size_gb}"
      type  = "${var.proxy_nginx_disk_type}"
    }
  }

  metadata {
    startup-script-url = "${var.proxy_nginx_startup_script_url}"
  }

  network_interface {
    subnetwork    = "${var.proxy_nginx_subnetwork_name}"
    access_config = {}
  }

  service_account {
    email  = "${var.proxy_nginx_service_account_email}"
    scopes = ["${var.proxy_nginx_service_account_scopes}"]
  }
}
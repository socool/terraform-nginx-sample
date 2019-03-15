# Nginx
module "proxy_nginx_a" {
  source                         = "./modules/proxy/nginx"
  project                        = "${var.project}"
  project_stage                  = "${var.project_stage}"
  zone                           = "${var.zone["a"]}"
  deletion_protection            = "${var.deletion_protection}"
  proxy_name                     = "${var.proxy_name}"
  proxy_nginx_name               = "${var.proxy_nginx_a_name}"
  proxy_nginx_image              = "${var.proxy_nginx_a_image}"
  proxy_nginx_subnetwork_name    = "${google_compute_subnetwork.public.name}"
  proxy_nginx_startup_script_url = "${var.proxy_nginx_a_startup_script_url}"
}
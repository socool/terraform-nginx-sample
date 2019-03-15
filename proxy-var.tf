variable "proxy_name" { default = "bcorpse-proxy-nginx" }

# Nginx
variable "proxy_nginx_a_name" { default = "bcorpse-proxy-nginx-a" }

variable "proxy_nginx_a_image" { default = "[YOUR_IMAGE]" }

variable "proxy_nginx_a_startup_script_url" { default = "gs://[YOUR_BUCKET]/proxy-nginx-a-startup" }

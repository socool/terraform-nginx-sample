# terraform-nginx-sample

* Step 1: fix images in proxy-var.tf

```
variable "proxy_nginx_a_image" { default = "[IMAGE_NAME]" }
```
fix startup script
```
variable "proxy_nginx_a_startup_script_url" { default = "gs://[YOUR_BUCKET]/proxy-nginx-a-startup" }
```

fix startup script url in var.tf

```
variable "proxy_nginx_startup_script_url" {
  default = "gs://[YOUR_BUCKET]/proxy-nginx-startup"
}
```

* Step 2: init environment

edit .env.sh

```
gcloud config set project '[PROJECT_ID]'
```

initial command
```
source .env.sh
```

set variable in global-var.tf

```
variable "project" {
  default = "[YOUR_PROJECT_ID]"
}
```

export credential

```
export GOOGLE_APPLICATION_CREDENTIALS=/[YOUR_PATH]/[GOOGLE_CREDENTIAL.json]
```


* Step 3: init terraform
```
terraform init
```

* Step 4: terraform plan
```
terraform plan
```

* Step 5: terraform apply
```
terraform apply
```

* somewhat you have got this error message
```
Error 403: Cloud Resource Manager API has not been used in project 
```
just enable it via api console

* Step 6: terraform cleanup
```terraform destroy```

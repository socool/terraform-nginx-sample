variable "network_name" {
  default = "bcorpse-beta"
}

variable "subnetwork_name" {
  type    = "map"
  default = {
    public    = "bcorpse-public"
  }
}

variable "network_cidr" {
  type    = "map"
  default = {
    public    = "10.1.0.0/22"
  }
}
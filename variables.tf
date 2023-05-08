# GCP region
variable "region" {
  type    = string
  default = "us-central1" #Default Region
}
# GCP zone
variable "zone" {
  type    = string
  default = "us-central1-c" #Default Zone
}
# GCP project name
variable "project" {
  type    = string
  default = "cse-us-341516"
}

# GCP oauth access token
variable "token" {
  type    = string
}

# FortiGate Image name
# 7.2.3 payg is projects/fortigcp-project-001/global/images/fortinet-fgtondemand-723-20221110-001-w-license
# 7.2.3 byol is projects/fortigcp-project-001/global/images/fortinet-fgt-723-20221110-001-w-license
variable "image" {
  type    = string
  default = "projects/fortigcp-project-001/global/images/fortinet-fgt-724-20230310-001-w-license"
}

variable "ubu-image" {
  type    = string
  default = "ubuntu-os-pro-cloud/ubuntu-pro-2004-lts"
}

# GCP instance machine type
variable "machine" {
  type    = string
  default = "n1-standard-2"
}
/* # VPC CIDR
variable "vpc_cidr" {
  type    = string
  default = "192.168.0.0/16"
} */
# Public Subnet CIDR
variable "public_subnet" {
  type    = string
  default = "192.168.128.0/25"
}
# Private Subnet CIDR
variable "protected_subnet" {
  type    = string
  default = "192.168.129.0/25"
}

# FortiGate Trust IP
variable "fgt_port2_ip" {
  type    = string
  default = "192.168.129.2"
}

# Ubuntu IP
variable "ubu_ip" {
  type    = string
  default = "192.168.129.3"
}

# user data for bootstrap fgt configuration
variable "user_data" {
  type    = string
  default = "config.txt"
}

# user data for bootstrap fgt license file
variable "license_file" {
  type    = string
  default = "license.lic" #FGT BYOL license
}

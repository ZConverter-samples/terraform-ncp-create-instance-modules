terraform {
  required_providers {
    ncloud = {
      source  = "NaverCloudPlatform/ncloud"
      version = "2.3.8"
    }
  }
}

locals {
  OS_product = {
    centos = {
      "7.3" : "centos-7.3-64"
      "7.8" : "CentOS 7.8 (64-bit)"
    }
    ubuntu = {
      "16.04" : "ubuntu-16.04-64-server"
      "18.04" : "ubuntu-18.04"
      "20.04" : "ubuntu-20.04"
    }
    windows = {
      "2016" : "Windows Server 2016 (64-bit) English Edition"
      "2019" : "Windows Server 2019 (64-bit) English Edition"
    }
  }
}

variable "region" {
  type = string
}

variable "support_vpc" {
  type    = bool
  default = true
}

variable "vm_name" {
  type = string
}

variable "login_key_name" {
  type    = string
  default = null
}

variable "OS_name" {
  type = string
}

variable "OS_version" {
  type = string
}

variable "subnet_no" {
  type    = string
  default = null
}

variable "access_control_group_name" {
  type    = string
  default = null
}

variable "create_access_control_group_name" {
  type    = string
  default = null
}

variable "create_access_control_group_rules" {
  type = list(object({
    direction        = optional(string, null)
    protocol         = optional(string, null)
    port_range_min   = optional(string, null)
    port_range_max   = optional(string, null)
    remote_ip_prefix = optional(string, null)
  }))
  default = null
}

variable "server_cpus" {
  type = number
}

variable "server_memory_in_gbs" {
  type = number
}

variable "storage_type" {
  type    = string
  default = "SSD"
}

variable "server_generation" {
  type    = string
  default = "G2"
}

variable "user_data" {
  type    = string
  default = null
}

variable "user_data_file_path" {
  type    = string
  default = null
}

variable "additional_volumes" {
  type    = list(number)
  default = []
}

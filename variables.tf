variable "yc_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "yc_folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
}

variable "yc_zone" {
  description = "Yandex Cloud Zone"
  type        = string
  default     = "ru-central1-a"
}

variable "ssh_public_key" {
  description = "SSH public key for VMs"
  type        = string
}

variable "vm_count" {
  description = "Number of VM instances"
  type        = number
  default     = 2
}

variable "yc_subnet_id" {
  description = "Subnet ID for target group"
  type        = string
  default     = ""
}

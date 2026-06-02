variable "proxmox_endpoint" {
  description = "Proxmox API endpoint"
  type        = string
}

variable "proxmox_api_token" {
  description = "Proxmox API token"
  type        = string
  sensitive   = true
}

variable "proxmox_insecure" {
  description = "Allow self-signed TLS certificate"
  type        = bool
  default     = true
}

variable "proxmox_node_name" {
  description = "Proxmox node name"
  type        = string
}

variable "datastore_id" {
  description = "Target Proxmox datastore"
  type        = string
}

variable "network_bridge" {
  description = "Proxmox network bridge"
  type        = string
  default     = "vmbr0"
}

variable "template_vmid" {
  description = "Source Cloud-Init template VMID"
  type        = number
  default     = 9000
}

variable "test_vm_id" {
  description = "Terraform test VM ID"
  type        = number
  default     = 9200
}

variable "test_vm_name" {
  description = "Terraform test VM name"
  type        = string
  default     = "tf-test-ubuntu-2404"
}

variable "test_vm_cores" {
  description = "CPU cores for test VM"
  type        = number
  default     = 2
}

variable "test_vm_memory_mb" {
  description = "Memory test VM in MB"
  type        = number
  default     = 2048
}

variable "vm_username" {
  description = "Cloud-Init user"
  type        = string
  default     = "devops"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
}

variable "test_vm_ipv4_address" {
  description = "IPv4 config for test VM. Use dhcp for initial test"
  type        = string
  default     = "dhcp"
}

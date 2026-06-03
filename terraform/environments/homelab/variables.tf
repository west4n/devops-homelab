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

variable "vm_username" {
  description = "Cloud-Init user"
  type        = string
  default     = "devops"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
}

variable "k3s_nodes" {
  description = "K3s node definitions"
  type = map(object({
    vm_id        = number
    name         = string
    role         = string
    cores        = number
    memory_mb    = number
    ipv4_address = string
    ipv4_gateway = string
  }))
}


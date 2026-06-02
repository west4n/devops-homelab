resource "proxmox_virtual_environment_vm" "test_vm" {
  name        = var.test_vm_name
  description = "Managed by Terraform. Test clone from Ubuntu 24.04 Cloud-Init template."
  tags        = ["terraform", "homelab"]

  node_name = var.proxmox_node_name
  vm_id     = var.test_vm_id

  started         = true
  on_boot         = false
  stop_on_destroy = true

  clone {
    vm_id        = var.template_vmid
    full         = true
    datastore_id = var.datastore_id
    retries      = 3
  }

  cpu {
    cores = var.test_vm_cores
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = var.test_vm_memory_mb
  }

  network_device {
    bridge = var.network_bridge
  }

  initialization {
    datastore_id = var.datastore_id

    ip_config {
      ipv4 {
        address = var.test_vm_ipv4_address
      }
    }

    user_account {
      username = var.vm_username
      keys     = [trimspace(file(var.ssh_public_key_path))]
    }
  }

  agent {
    enabled = false
  }

  operating_system {
    type = "l26"
  }

  serial_device {}
}
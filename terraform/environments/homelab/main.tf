resource "proxmox_virtual_environment_vm" "k3s_nodes" {
  for_each = var.k3s_nodes

  name        = each.value.name
  description = "Managed by Terraform. K3s ${each.value.role} node."
  tags        = ["terraform", "homelab", "k3s", each.value.role]

  node_name = var.proxmox_node_name
  vm_id     = each.value.vm_id

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
    cores = each.value.cores
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = each.value.memory_mb
  }

  network_device {
    bridge = var.network_bridge
  }

  initialization {
    datastore_id = var.datastore_id

    ip_config {
      ipv4 {
        address = each.value.ipv4_address
        gateway = each.value.ipv4_gateway
      }
    }

    user_account {
      username = var.vm_username
      keys     = [trimspace(file(var.ssh_public_key_path))]
    }
  }

  agent {
    enabled = true
  }

  operating_system {
    type = "l26"
  }

  serial_device {}
}


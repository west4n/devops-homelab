output "k3s_nodes" {
  value = {
    for key, node in proxmox_virtual_environment_vm.k3s_nodes : key => {
      vm_id = node.vm_id
      name  = node.name
    }
  }
}

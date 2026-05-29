# Proxmox Cloud-Init Template

## Purpose

This document describes the base Ubuntu Cloud-Init template used for provisioning homelab virtual machines.

The template is used as the base image for future Terraform-provisioned Kubernetes nodes.

## Template

Name: ubuntu-2404-cloudinit

VMID: 9000

OS: Ubuntu Server 24.04 LTS

Image source: Ubuntu Cloud Images

Image file: noble-server-cloudimg-amd64.img

## Proxmox settings

CPU: 2 cores

Memory: 2048 MB

Disk: 20 GB

Disk controller: virtio-scsi-pci

Network: virtio

Cloud-Init drive: enabled

Serial console: enabled

QEMU guest agent option: enabled

Default Cloud-Init user: devops

Authentication: SSH key only

## Why Cloud-Init

Cloud-Init allows new VMs to be initialized with SSH keys, user settings and network configuration during first boot.

This makes VM provisioning faster and reproducible compared to manual OS installation.

## Verification

The template was verified by creating a test clone and checking that:

- the VM boots successfully
- Cloud-Init runs successfully
- the devops user can log in over SSH
- Ubuntu 24.04 is running
- the VM receives network configuration

## Notes

The test clone is temporary and can be removed after verification.

The template should not contain application-specific configuration.

Application and server configuration will be handled later by Ansible.

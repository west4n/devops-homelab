# Ansible Base OS Preparation

## Purpose

This document describes base operating system preparation for Terraform-provisioned Ubuntu VMs.

Terraform is responsible for creating VM infrastructure.

Ansible is responsible for configuring the operating system after the VM is reachable over SSH.

## What Ansible configures

- waits for SSH availability
- waits for cloud-init completion
- updates packages
- installs base tools
- installs and starts qemu-guest-agent
- configures UFW firewall
- disables swap
- configures kernel modules for Kubernetes
- configures sysctl settings for Kubernetes networking

## Why not Terraform provisioners

Terraform should manage infrastructure resources.

Operating system configuration is handled by Ansible to keep a clear separation between infrastructure provisioning and configuration management.

## Verification

The VM is considered ready when:

- Ansible can connect over SSH
- cloud-init has finished
- qemu-guest-agent is active
- UFW is enabled
- Kubernetes sysctl settings are applied

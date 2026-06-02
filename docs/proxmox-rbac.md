# Proxmox RBAC for Terraform

## Purpose

Terraform uses a dedicated Proxmox API user instead of root.

## User

terraform@pve

## Token

terraform@pve!homelab

The token secret is stored only in local terraform.tfvars and must not be committed.

## Role

TerraformProvisioner

## Reason

Using a dedicated API user provides a safer and more auditable access model than using root@pam for Terraform automation.

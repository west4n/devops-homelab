# K3s Installation

## Purpose

This document describes the initial K3s cluster installation for the homelab environment.

## Cluster topology

- k3s-cp-01: control-plane node
- k3s-worker-01: worker node
- k3s-worker-02: worker node

## Responsibilities

Terraform provisions the virtual machines.

Ansible prepares the operating system and installs K3s.

## Installation flow

1. Apply common K3s node settings.
2. Install K3s server on the control-plane node.
3. Read the node token from the server.
4. Install K3s agents on worker nodes using K3S_URL and K3S_TOKEN.
5. Fetch kubeconfig to a local ignored directory.
6. Verify nodes and system pods.

## Networking

The control-plane node exposes the Kubernetes API on TCP 6443.

Flannel VXLAN uses UDP 8472 between cluster nodes.

Firewall rules are restricted to cluster node IPs.

## Secrets

The K3s node token and local kubeconfig are not committed to Git.

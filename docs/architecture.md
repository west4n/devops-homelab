# Architecture

## Overview

This project demonstrates a production-like DevOps workflow for deploying a real Next.js + Payload application with PostgreSQL.

## Phase 1: Docker Compose baseline

User traffic flow:

User
-> Domain / DNS
-> Reverse Proxy
-> Next.js + Payload container
-> PostgreSQL container

Docker Compose is used only as a baseline validation step before Kubernetes.

## Phase 2: Infrastructure automation

Terraform responsibilities:

Terraform
-> Proxmox VM provisioning

Ansible responsibilities:

Ansible
-> Linux users
-> SSH
-> Packages
-> Firewall
-> Base tooling

## Phase 3: Kubernetes / k3s

Target Kubernetes layout:

Proxmox
-> VM: k3s-control-plane-01
-> VM: k3s-worker-01
-> VM: k3s-worker-02

The main target deployment platform is Kubernetes using k3s.

## Phase 4: CI/CD and artifacts

Release flow:

Git tag
-> CI/CD pipeline
-> Docker image build
-> Push image to Nexus
-> Update Kubernetes deployment version

## Phase 5: GitOps

GitOps flow:

Git repository
-> Kubernetes manifests
-> Argo CD Application
-> k3s cluster sync

Argo CD compares the desired state from Git with the actual state in Kubernetes and synchronizes changes.

## Phase 6: Observability

Observability stack:

Prometheus -> metrics
Grafana -> dashboards
Loki -> logs
Promtail -> log shipping

## Phase 7: Backup and recovery

Backup flow:

PostgreSQL backup
-> Backup storage
-> Restore procedure
-> Disaster recovery runbook

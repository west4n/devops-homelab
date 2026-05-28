# DevOps Homelab

Production-like DevOps Homelab project based on Proxmox, Kubernetes and GitOps.

## Goal

Deploy a real Next.js + Payload application with PostgreSQL using a production-like DevOps workflow.

## Target application

- Next.js
- Payload CMS
- PostgreSQL

## Infrastructure

- Hypervisor: Proxmox VE
- Public IP: yes
- Domain: yes
- Initial validation: Docker Compose
- Main target: Kubernetes / k3s
- GitOps: Argo CD

## DevOps stack

- Git and Semantic Versioning
- Docker
- Docker Compose
- Terraform
- Ansible
- Nexus Repository Manager
- Kubernetes / k3s
- Argo CD
- Prometheus
- Grafana
- Loki
- Promtail
- Backup and restore automation

## Target architecture

Internet traffic goes to the domain, then to the Kubernetes ingress controller, then to the Next.js + Payload application running inside Kubernetes.

The application image is built by CI/CD, versioned with SemVer, pushed to Nexus Docker Registry and deployed to Kubernetes through GitOps.

## Project phases

### Phase 0: Repository and release workflow

Prepare repository structure, Git workflow, Semantic Versioning rules and basic documentation.

### Phase 1: Containerization baseline

Prepare Dockerfile and Docker Compose for local validation of the application and PostgreSQL.

### Phase 2: Proxmox infrastructure

Create VM templates and provision Kubernetes nodes using Terraform.

### Phase 3: Server configuration

Use Ansible to configure Linux users, SSH, packages, firewall and base tooling.

### Phase 4: Kubernetes / k3s

Install k3s cluster and deploy the application using Kubernetes manifests.

### Phase 5: CI/CD and Nexus

Build Docker images, tag them using SemVer and push them to Nexus Repository Manager.

### Phase 6: GitOps with Argo CD

Store Kubernetes manifests in Git and use Argo CD to synchronize the desired state into the cluster.

### Phase 7: Observability

Add Prometheus, Grafana, Loki and Promtail for metrics, dashboards and logs.

### Phase 8: Backup, restore and rollback

Create backup scripts, restore procedure, rollback procedure and disaster recovery runbook.

## What this project demonstrates

This project demonstrates practical DevOps skills:

- infrastructure as code
- configuration management
- containerization
- CI/CD
- artifact management
- Kubernetes deployment
- GitOps
- observability
- backup and disaster recovery
- troubleshooting

## Current status

Day 0: repository structure, Git workflow and release process.

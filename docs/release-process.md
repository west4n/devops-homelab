# Release Process

This project uses Semantic Versioning.

Format:

MAJOR.MINOR.PATCH

Examples:

v1.0.0 - first stable release
v1.0.1 - patch fix
v1.1.0 - backward-compatible feature
v2.0.0 - breaking change

## Branching model

- main is stable
- feature branches are created from main
- changes are merged through pull requests
- production deployments are based on Git tags

## Docker image tags

Every release tag should produce a Docker image tag with the same version.

Git tag example:

v1.0.0

Docker image tag example:

nexus.example.com/nextjs-payload-app:v1.0.0

## Why not only latest

The latest tag does not describe a stable release version.

Rollback is safer when every deployment uses an immutable version tag.

Bad example:

nextjs-payload-app:latest

Better examples:

nextjs-payload-app:v1.0.0
nextjs-payload-app:v1.0.1
nextjs-payload-app:v1.1.0

## Rollback idea

If release v1.1.0 is broken, deploy the previous stable image:

nextjs-payload-app:v1.0.1

## Release owner

For homelab purposes, the release owner is the repository maintainer.

## Release validation

Before creating a release tag, the maintainer should verify that documentation, Docker image version and deployment manifests use the same version.

#!/bin/bash

repo_name="ghcr.io/gunanr/docker-toolbox"

container_tag="fedora"
platform=""
podman build -t ${repo_name}:${container_tag} -f containerfile.${container_tag} --platform=linux/amd64 . && podman push ${repo_name}:${container_tag} 
podman build -t ${repo_name}:${container_tag} -f containerfile.${container_tag} --platform=linux/aarch64 . && podman push ${repo_name}:${container_tag}


container_tag="alpine"
platform=""
podman build -t ${repo_name}:${container_tag} -f containerfile.${container_tag} --platform=linux/amd64 . && podman push ${repo_name}:${container_tag}
podman build -t ${repo_name}:${container_tag} -f containerfile.${container_tag} --platform=linux/aarch64 . && podman push ${repo_name}:${container_tag}



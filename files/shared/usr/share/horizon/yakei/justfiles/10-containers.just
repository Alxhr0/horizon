dbox-ubuntu:
	#!/usr/bin/env bash
	distrobox-create --image quay.io/toolbx/ubuntu-toolbox:latest --name ubuntu

dbox-ubuntu-with-packages:
	#!/usr/bin/env bash

	read -p "Packages: " container_pkgs

	distrobox-create --image quay.io/toolbx/ubuntu-toolbox:latest --name ubuntu --additional-packages "$container_pkgs"

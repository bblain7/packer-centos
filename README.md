# Packer CentOS Server

This project creates a CentOS Minimal Server Vagrant box for VirtualBox using Packer.

## Prerequisites

Download and install each of the following software.

- Packer
- Vagrant
- VirtualBox

## Installation

Run the ``build.sh`` bash script will execute the packer command and then add the Vagrant box to your user profile.

```shell
sh centos-${version}.sh
```

The script makes some assumptions about where files should be located. The Packer created box will be temporarily placed in the project directory.

```shell
${project_dir}/${version}/boxes/${vm_provider}/${box_name}.box
```

Vagrant will add the new box to the Vagrant local catalog under the identity of the user that creates the box.

```shell
${USER}/${box_name}
```

Example: ``bob/centos``

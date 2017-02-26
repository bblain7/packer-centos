#!/bin/bash

dir=$(dirname "$(readlink -f "$0")")
vm_provider="virtualbox"
box_name="centos"

packer build -var "box_name=${box_name}" "${dir}/packer.json" || {
  echo "Packer failed to create Vagrant box.";
  exit 1;
}

vagrant box add --force "${USER}/${box_name}" "${dir}/boxes/${vm_provider}/${box_name}.box" || {
  echo "Vagrant failed to add box.";
  exit 1;
}


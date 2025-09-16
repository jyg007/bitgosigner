
## build/

This directory allows to build bitsigner container


## contractgenerator/

This directory contains the bitgosigner contract generator.  Terraform is not required

1/ Edit terraforms.tfvars  
2/ create_contract_shell.sh creates the contract in install directory
3/ install directory can be copied to the target host.

IBM HPVS must be preinsalled as /var/lib/libvirt/images/hpcr.2.2.2

	virsh define domain_bitgosigner.xml  creates the KVM guest.  Adjust network definition in the xml file and network-config if necessary.

	Create a data disk for persistent storage
	qemu-img create -f qcow2 /var/lib/libvirt/images/bitgosigner-data.qcow2 10G

	create-cloudinit.sh installs the contract

## dockercompose/

Allows to start the built bitgo signer

## src/

Build bitgo signer binary there.

## test/

Tooling for testing the signer.


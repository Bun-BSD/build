help:
	@echo "build: Script for cooking bun on OpenBSD"
get-iso:
	wget https://cdn.openbsd.org/pub/OpenBSD/7.3/amd64/install73.iso
vm-disk:
	@make -p vm
	qemu-img create -f qcow2 ./vm/drive.qcow2 30G
vm-install:
	qemu-system-x86_64 -hda ./vm/drive.qcow2 -m 8G -cpu host -smp 3 -enable-kvm -cdrom ./install73.iso
vm-run:
	qemu-system-x86_64 -hda ./vm/drive.qcow2 -m 8G -cpu host -smp 3 -enable-kvm

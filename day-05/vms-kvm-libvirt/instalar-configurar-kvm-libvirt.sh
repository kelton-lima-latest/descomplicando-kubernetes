sudo apt -y install bridge-utils cpu-checker libvirt-clients libvirt-daemon qemu-kvm

sudo apt update
sudo apt install qemu-kvm libvirt-daemon-system

sudo adduser $USER libvirt

sudo apt install virtinst
#!/bin/bash

# Nome da VM
export VM_NAME=k8s-01

# Criar arquivo meta-data para cloud-init
cat > meta-data <<EOF
instance-id: $VM_NAME
local-hostname: $VM_NAME
EOF

# Criar arquivo network-config para cloud-init (netplan v2)
# Verifique o nome correto da interface de rede
cat > network-config <<EOF
version: 2
ethernets:
  enp1s0: 
    dhcp4: true
EOF

# Criar arquivo temporário user-data com variáveis substituídas
TEMP_USER_DATA=$(mktemp)
envsubst < user-data > "$TEMP_USER_DATA"

# Criar VM com virt-install
virt-install \
  --name "$VM_NAME" \
  --memory 2000 \
  --vcpus 2 \
  --disk size=10,backing_store="/var/lib/libvirt/images/noble-server-cloudimg-amd64.img" \
  --os-variant detect=on,name=ubuntunoble \
  --cloud-init user-data="$TEMP_USER_DATA",meta-data="$(pwd)/meta-data",network-config="$(pwd)/network-config" \
  --network network=hostbridge \
  --graphics none \
  --console pty,target_type=serial \
  --autostart

# Remover arquivo temporário user-data somente após virt-install terminar
rm "$TEMP_USER_DATA"

echo "VM $VM_NAME criada com sucesso!"
echo "Para acessar o console: virsh console $VM_NAME"

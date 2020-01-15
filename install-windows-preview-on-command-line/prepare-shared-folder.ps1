# Prepare (existing) folder to be shared between the guest and the host

VBoxManage sharedfolder add $vmName --name shr --hostpath "$(get-location)\sharedFolder" --automount

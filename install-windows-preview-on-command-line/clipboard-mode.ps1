
# Allow clipboard content to be shared in both directions
# between host and guest.

VBoxManage modifyvm  $vmName --clipboard-mode bidirectional

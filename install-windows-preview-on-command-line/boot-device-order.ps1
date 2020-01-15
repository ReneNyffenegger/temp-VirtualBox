#  Configure the boot device order for the VM.
#  A virtual machine has 4 slots from which it tries
#  to boot from.

VBoxManage modifyvm $vmName --boot1 dvd --boot2 disk --boot3 none --boot4 none

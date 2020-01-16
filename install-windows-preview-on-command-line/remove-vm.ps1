VBoxManage controlvm $vmName poweroff
VBoxManage unregistervm --delete $vmName
rmdir -recurse $vmPath

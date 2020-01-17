VBoxManage controlvm    $vmNameClone poweroff
VBoxManage unregistervm $vmNameClone --delete 
# rmdir -recurse $vmPath

# Revert to snapshot

# ? VBoxManage controlvm $vmName pause

VBoxManage controlvm $vmName savestate
VBoxManage snapshot  $vmName restore after-installation
VBoxManage startvm   $vmName
VBoxManage controlvm $vmName resume

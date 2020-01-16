
# VBoxManage showvminfo $vmName

$vmNameClone='Win 10 test env'
VBoxManage clonevm   $vmName --name=$vmNameClone --registery

VBoxManage startvm $vmNameClone


. .\run-ipconfig.ps1

. .\run-cmd-with-arguments.ps1
#q
#q . .\run-powershell.ps1
#q
#q . .\map-drive.ps1
#q
#q . .\show-mapped-drives.ps1
#q
#q . .\oh-e.ps1
#q
#q . .\tree-e.ps1
#q
#q . .\run-batch-file.ps1
#q
#q . .\take-snapshot.ps1
#q
#q . .\create-directory.ps1
#q
#q . .\copy-from-host-to-guest.ps1
#q
#q . .\run-copied-batch-file.ps1
#q
#q . .\copy-from-guest-to-host.ps1
#q
#q . .\revert-to-snapshot.ps1

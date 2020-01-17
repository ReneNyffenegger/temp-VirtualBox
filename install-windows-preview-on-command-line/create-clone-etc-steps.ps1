
# VBoxManage showvminfo $vmName

#q $vmNameClone='Win 10 test env'
#q $vmNameClone='clone'
#q $instDir="c:\users\$username\Software-to-be-installed"
#q 
#q VBoxManage clonevm $vmName --name=$vmNameClone --register
#q VBoxManage clonevm $vmName --name=$vmNameClone

. .\variables-clone.ps1

. .\create-clone.ps1

. .\start-clone.ps1

. .\run-ipconfig.ps1

. .\run-cmd-with-arguments.ps1

. .\run-powershell.ps1

. .\map-drive.ps1

. .\show-mapped-drives.ps1

. .\oh-e.ps1

. .\tree-e.ps1

. .\run-batch-file.ps1

. .\create-directory.ps1

. .\copy-from-host-to-guest.ps1

. .\run-copied-batch-file.ps1

. .\copy-from-guest-to-host.ps1

here....
. .\take-snapshot.ps1

# do stuff

# . .\revert-to-snapshot.ps1

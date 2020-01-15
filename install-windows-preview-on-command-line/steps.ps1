#
#  TODO
#    c:\Program Files\Oracle\VirtualBox\UnattendedTemplates\win_postinstall.cmd

   . .\variables.ps1

VBoxManage unregistervm --delete $vmName
rmdir -recurse $vmPath
   

   . .\detect.ps1
  
   . .\createvm.ps1
  
   . .\create-hd.ps1
  
   . .\create-sata.ps1
  
   . .\create-ide.ps1
  
   . .\enable-apic.ps1
  
   . .\boot-device-order.ps1
  
   . .\allocate-memory.ps1
  
   . .\prepare-shared-folder.ps1
  
   . .\install.ps1
  
   . .\list-vms.ps1
  
   . .\remove-menues.ps1
  
   . .\start-vm.ps1
  
   . .\wait-for-finished-installation.ps1
#q
#q . .\take-snapshot.ps1
#q
#q . .\run-ipconfig.ps1
#q
#q . .\run-cmd-with-arguments.ps1
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
#q . .\create-directory.ps1
#q
#q . .\copy-from-host-to-guest.ps1
#q
#q . .\run-copied-batch-file.ps1
#q
#q . .\copy-from-guest-to-host.ps1
#q
#q . .\revert-to-snapshot.ps1

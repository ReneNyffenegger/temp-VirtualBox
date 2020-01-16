#
#  TODO
#    c:\Program Files\Oracle\VirtualBox\UnattendedTemplates\win_postinstall.cmd
#
#  TODO
#    E:\vboxadditions\VboxWindowsAdditions.exe
#      installs to -> C:\Program Files\Oracle\VirtualBox Guest Additions\

#q . .\variables.ps1


   . .\remove-vm.ps1

   . .\detect.ps1
  
   . .\createvm.ps1
  
   . .\create-hd.ps1
  
   . .\create-sata.ps1
  
   . .\create-ide.ps1
  
   . .\enable-apic.ps1

   . .\enable-acpi.ps1    # ???
  
   . .\boot-device-order.ps1
  
   . .\allocate-memory.ps1
  
   . .\prepare-shared-folder.ps1

   VBoxManage modifyvm  $vmName --clipboard-mode bidirectional

   VBoxManage controlvm $vmName setscreenlayout primary 0 0 1600 1200 24
  
   . .\install.ps1
  
   . .\list-vms.ps1
  
   . .\remove-menues.ps1
  
   . .\start-vm.ps1
  
   . .\wait-for-finished-installation.ps1

   start-sleep 1000

#  . .\shutdown-machine.ps1  # does not work

    Machine needs to be shut down in order to clone it. So shut it down (manually, unfortunately)
    (good occasion to also close edge browser).

      
      shutdown -s -t 0


#
#   Now: go on with
#
#     create-clone-etc-steps.ps1

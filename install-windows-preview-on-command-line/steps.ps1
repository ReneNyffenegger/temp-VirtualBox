#
#  TODO
#    c:\Program Files\Oracle\VirtualBox\UnattendedTemplates\win_postinstall.cmd
#
#  TODO
#    E:\vboxadditions\VboxWindowsAdditions.exe
#      installs to -> C:\Program Files\Oracle\VirtualBox Guest Additions\
#  TODO
#    REcommended graphic VBoxSVGA

   . .\variables.ps1


   . .\remove-vm.ps1

   . .\detect.ps1
  
   . .\createvm.ps1
  
   . .\create-hd.ps1
  
   . .\create-sata.ps1
  
   . .\create-ide.ps1
  
   . .\enable-apic.ps1

#  . .\enable-acpi.ps1    # ???
  
   . .\boot-device-order.ps1
  
   . .\allocate-memory.ps1
  
   . .\prepare-shared-folder.ps1

   . .\clipboard-mode.ps1
   . .\clipboard-mode.ps1
   . .\vboxsvga.ps1

 
 

#    error.... machine... is not currently running
#    VBoxManage controlvm $vmName setscreenlayout primary 0 0 1600 1200 24
  
   . .\install.ps1
  
   . .\list-vms.ps1
  
   . .\remove-menues.ps1
  
   . .\start-vm.ps1

#q   VBoxManage setextradata $vmName CustomVideoMode 1600x900x32
# VBoxManage setextradata $vmName CustomVideoMode 1600x900x32
#    VBoxManage controlvm $vmName setvideomodehint 1920 1080 32

   . .\video-mode-hint.ps1
  
   . .\wait-for-finished-installation.ps1

  
#q start-sleep 1000

#  . .\shutdown-machine.ps1  # does not work

#    Machine needs to be shut down in order to clone it. So shut it down (manually, unfortunately)
#    (good occasion to also close edge browser).
#
#      
#      shutdown -s -t 0
#

#
#   Now: go on with
#
#     create-clone-etc-steps.ps1

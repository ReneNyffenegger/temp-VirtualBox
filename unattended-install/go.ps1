# $env:path="C:\Program Files\Oracle\VirtualBox;$env:path"

$vmName='Win10Preview'
$vmPath="$home\VirtualBox VMs\$vmName"

VBoxManage unregistervm --delete $vmName

# VBoxManage list ostypes 
VBoxManage createvm --name $vmName --ostype Windows10_64 --register
  #
  #  Virtual machine 'Win10Preview' is created and registered.
  #  UUID: 2f75de17-61bc-4ff9-94e1-12cdbc0cb42e
  #  Settings file: 'C:\Users\Rene\VirtualBox VMs\Win10Preview\Win10Preview.vbox'

if (! (test-path $vmPath\$vmName.vbox)) {
  echo "I expected a .vbox"
  return
}

#
#
#  Create a 32768 MB virtual hard disk.
#
#     --size parameter is in MB
#
VBoxManage createmedium --filename $vmPath\hard-drive.vdi --size 32768
  #
  #  0%...10%...20%...30%...40%...50%...60%...70%...80%...90%...100%
  #  Medium created. UUID: c50fe283-bb39-4d9f-8470-01ef829cca25
  #
  #  ----------------------------------
  #  Drop it again with
  #    VBoxManage list hdds
  #    VBoxManage closemedium disk c50fe283-bb39-4d9f-8470-01ef829cca25 --delete

if (! (test-path $vmPath\hard-drive.vdi)) {
  echo "I expected a .vdi"
  return
}

#
#   Create a SATA storage controller and attach the virtual hard disk.
#
VBoxManage storagectl    $vmName --name       "SATA Controller" --add sata --controller IntelAHCI
VBoxManage storageattach $vmName --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $vmPath/hard-drive.vdi

#
#   Create an IDE storage controller for a virtual DVD drive and
#   attach an Installation ISO medium
#
VBoxManage storagectl    $vmName --name       "IDE Controller"  --add ide
VBoxManage storageattach $vmName --storagectl "IDE Controller"  --port 0 --device 0 --type dvddrive --medium ..\ISOs\Windows10_InsiderPreview_Client_x64_en-us_19035.iso


#
#  Enable I/O APIC for the motherboard of the VM.
#
VBoxManage modifyvm $vmName --ioapic on

#
#  Configure the boot device order for the VM.
#
VBoxManage modifyvm $vmName --boot1 dvd --boot2 disk --boot3 none --boot4 none

#
#  Allocate memory for RAM and video-RAM
#
VBoxManage modifyvm $vmName --memory 8192 --vram 128


#
#  ???
#
VBoxManage sharedfolder add $vmName --name shr --hostpath "$(get-location)\sharedFolder"

VBoxManage unattended install $vmName                               `
  --iso=..\ISOs\Windows10_InsiderPreview_Client_x64_en-us_19035.iso `
  --user=tq84 --full-user-name='Tee Queue Eighty-Four' --password theSecret           `
  --install-additions                                               `
  --time-zone=CET

  #
  #  find Tee Queue Eighty-Four under
  #    HKLM\Software\Microsoft\Windows\CurrentVersion\Authentication\LogonUI -> LastLoggedOnDisplayName 
  

# VBoxManage startvm $vmName --type headless
  VBoxManage startvm $vmName

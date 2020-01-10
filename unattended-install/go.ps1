# $env:path="C:\Program Files\Oracle\VirtualBox;$env:path"

$vmName='Win10Preview'
$vmPath="$home\VirtualBox VMs\$vmName"

#q # VBoxManage list ostypes 
#q VBoxManage createvm --name $vmName --ostype Windows10_64 --register
#q   #
#q   #  Virtual machine 'Win10Preview' is created and registered.
#q   #  UUID: 2f75de17-61bc-4ff9-94e1-12cdbc0cb42e
#q   #  Settings file: 'C:\Users\Rene\VirtualBox VMs\Win10Preview\Win10Preview.vbox'

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
#q VBoxManage createmedium --filename $vmPath\hard-drive.vdi --size 32768
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
#q VBoxManage storagectl    $vmName --name       "SATA Controller" --add sata --controller IntelAHCI
#q VBoxManage storageattach $vmName --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $vmPath/hard-drive.vdi

#
#   Create an IDE storage controller for a virtual DVD drive and
#   attach an Installation ISO medium
#
#q VBoxManage storagectl    $vmName --name       "IDE Controller"  --add ide
#q VBoxManage storageattach $vmName --storagectl "IDE Controller"  --port 0 --device 0 --type dvddrive --medium ..\ISOs\Windows_InsiderPreview_SDK_en-us_19041.iso


#
#  Enable I/O APIC for the motherboard of the VM.
#
#q VBoxManage modifyvm $vmName --ioapic on

#
#  Configure the boot device order for the VM.
#
#q VBoxManage modifyvm $vmName --boot1 dvd --boot2 disk --boot3 none --boot4 none

#
#  Allocate memory for RAM and video-RAM
#
VBoxManage modifyvm $vmName --memory 8192 --vram 128

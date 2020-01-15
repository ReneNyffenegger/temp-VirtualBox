#  Create a 32768 MB virtual hard disk.
#
#     --size parameter is in MB

VBoxManage createmedium --filename $vmPath\hard-drive.vdi --size 32768

if (! (test-path $vmPath\hard-drive.vdi)) {
   echo "I expected a .vdi"
   return
}

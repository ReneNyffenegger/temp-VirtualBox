# Copy a file from the host to the guest

VBoxManage guestcontrol $vmName copyto   --username $userName --password $password --target-directory "C:\users\$username\Software-to-be-installed" "$(get-location)\anotherBatchFile.bat"

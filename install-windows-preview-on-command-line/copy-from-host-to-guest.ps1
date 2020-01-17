# Copy a file from the host to the guest

# VBoxManage guestcontrol $vmNameClone copyto --username $userName --password $password --target-directory "C:\users\$username\Software-to-be-installed" "$(get-location)\anotherBatchFile.bat"
  VBoxManage guestcontrol $vmNameClone copyto --username $userName --password $password --target-directory $instDir                                      "$(get-location)\anotherBatchFile.bat"

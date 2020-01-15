# Copy the log file from the guest to the host

VBoxManage guestcontrol $vmName copyfrom --username $userName --password $password --target-directory "$(get-location)\copiedFromGuest.log" "c:\users\$userName\anotherBatchFile.log"

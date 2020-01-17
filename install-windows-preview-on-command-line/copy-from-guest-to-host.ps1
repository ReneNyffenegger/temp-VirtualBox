# Copy the log file from the guest to the host

VBoxManage guestcontrol $vmNameClone copyfrom --username $userName --password $password --target-directory "$(get-location)\copiedFromGuest.log" "$instDir\anotherBatchFile.log"

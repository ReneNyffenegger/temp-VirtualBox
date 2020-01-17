# Execute the copied batch file
# It produces anotherBatchFile.log

VBoxManage guestcontrol $vmNameClone run  --username $userName --password $password --exe  "$instDir\anotherBatchFile.bat"

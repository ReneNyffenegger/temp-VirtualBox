# Execute the copied batch file
# It produces anotherBatchFile.log

VBoxManage guestcontrol $vmName run      --username $userName --password $password --exe  "c:\users\$userName\software-to-be-installed\anotherBatchFile.bat"

# Run a batch file

VBoxManage guestcontrol $vmName run   --exe "X:\aBatchFile.bat"   --username $userName --password $password -- DUMMY foo bar baz

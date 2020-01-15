# Show mapped drives

VBoxManage guestcontrol $vmName run --username $userName --password $password --exe fsutil.exe -- DUMMY fsinfo drives

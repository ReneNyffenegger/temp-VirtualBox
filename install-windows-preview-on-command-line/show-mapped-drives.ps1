# Show mapped drives

VBoxManage guestcontrol $vmNameClone run --username $userName --password $password --exe fsutil.exe -- DUMMY fsinfo drives

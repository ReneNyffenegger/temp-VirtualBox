# Oh, there is an E: drive...

VBoxManage guestcontrol $vmNameClone run --username $userName --password $password --exe fsutil.exe -- DUMMY fsinfo volumeInfo e:

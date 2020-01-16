#  Apparently, executables, though in the PATH, need to be fully qualified

VBoxManage guestcontrol $vmNameClone run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe --username $userName --password $password -- -command get-date

#
#  See https://renenyffenegger.ch/notes/Companies-Products/Oracle/VM-VirtualBox/command-line/PowerShell/setting-up-environment
#
$vmNameClone='MDAC'
$instDir="c:\users\$username\Software-to-be-installed"

VBoxManage clonevm $vmName --name=$vmNameClone --register

VBoxManage startvm $vmNameClone

VBoxManage guestcontrol $vmNameClone run --username $userName --password $password --exe reg.exe DUMMY query HKEY_LOCAL_MACHINE\Software\Microsoft\DataAccess
VBoxManage guestcontrol $vmNameClone run --username $userName --password $password --exe reg.exe DUMMY query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office


VBoxManage guestcontrol $vmNameClone mkdir    --username $userName --password $password $instDir

VBoxManage guestcontrol $vmNameClone copyto   --username $userName --password $password --target-directory $instDir "$(get-location)\find-ole-db-provider.ps1"

VBoxManage guestcontrol $vmNameClone run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe --username $userName --password $password -- -command set-executionPolicy remoteSigned -scope currentUser
VBoxManage guestcontrol $vmNameClone run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe --username $userName --password $password -- -command $instDir\find-ole-db-provider.ps1


# ----
#

VBoxManage guestcontrol $vmNameClone run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe --username $userName --password $password -- -command reg query hklm /s /f excel


# . C:\Users\OMIS.Rene\github\about\VirtualBox\command-line\PowerShell\unattended-os-installation\variables.ps1

# . .\variables.ps1

# . .\copy-dll-from-OracleHome.ps1

# csc  …

VBoxManage startvm $vmNameClone

VBoxManage guestcontrol $vmNameClone copyto --username $userName --password $password --target-directory $instDir "$(get-location)\Oracle.ManagedDataAccess.dll"
VBoxManage guestcontrol $vmNameClone copyto --username $userName --password $password --target-directory $instDir "$(get-location)\main.exe"

(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))) (CONNECT_DATA = (SERVICE_NAME = ORA18)))

VBoxManage guestcontrol $vmNameClone run    `
  --exe $instDir\main.exe                   `
  --username $userName --password $password `
  -- DUMMY                                  `
  "user Id=rene;password=rene;data source=(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 172.21.160.1)(PORT = 1521))) (CONNECT_DATA = (SERVICE_NAME = ORA18)))"


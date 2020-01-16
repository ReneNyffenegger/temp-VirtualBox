#   Passing arguments to an executable
#   I am not sure what the first argument (WHATISTHIS) is good for

VBoxManage guestcontrol $vmNameClone run --exe cmd.exe  --username $userName --password $password -- WHATISTHIS /c echo foo bar baz
VBoxManage guestcontrol $vmNameClone run --exe ping.exe --username $userName --password $password XXX 172.17.192.1

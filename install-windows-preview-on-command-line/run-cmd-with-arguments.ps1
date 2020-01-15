#   Passing arguments to an executable
#   I am not sure what the first argument (WHATISTHIS) is good for

VBoxManage guestcontrol $vmName run --exe cmd.exe      --username $userName --password $password -- WHATISTHIS /c echo foo bar baz

# Map a drive
# With the ability to call executables and passing parameters, we're able to
# mount (map) the sharedfolder on a letter. Virtual Box provides the virtual server \\vboxsvr under
# which the shared folders are located:
# 
#   (shared folder was added with something like 
#       VBoxManage sharedfolder add $vmName --name shr --hostpath sharedFolder
#    earlier)

VBoxManage guestcontrol $vmNameClone run --username $userName --password $passWord --exe 'C:\Windows\System32\net.exe' -- DUMMY use x: \\vboxsvr\shr

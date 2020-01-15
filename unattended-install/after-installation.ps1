# $vmName='Win10Preview'

#
#  First: take a snapshot
#
VBoxManage snapshot $vmName take after-installation

#
#   Executing an executable on the guest.
#   Note: the .exe suffix is mandatatory (on Windows, of course)
#

VBoxManage guestcontrol $vmName run --exe ipconfig.exe --username $userName --password $password

#
#   Passing arguments to an executable
#   I am not sure what the first argument (WHATISTHIS) is good for
#
VBoxManage guestcontrol $vmName run --exe cmd.exe      --username $userName --password $password -- WHATISTHIS /c echo foo bar baz

#
#  Apparently, executables, though in the PATH, need to be fully qualified
#
VBoxManage guestcontrol $vmName run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe --username $userName --password $password -- -command get-date

#
# Map a drive
# With the ability to call executables and passing parameters, we're able to
# mount (map) the sharedfolder on a letter. Virtual Box provides the virtual server \\vboxsvr under
# which the shared folders are located:
# 
#   (shared folder was added with something like 
#       VBoxManage sharedfolder add $vmName --name shr --hostpath sharedFolder
#    earlier)
#
VBoxManage guestcontrol $vmName run --username $userName --password $passWord --exe 'C:\Windows\System32\net.exe' -- DUMMY use x: \\vboxsvr\shr

#
# Show mapped drives
#
VBoxManage guestcontrol $vmName run --username $userName --password $password --exe fsutil.exe -- DUMMY fsinfo drives

#
# Oh, there is an E: drive...
#
VBoxManage guestcontrol $vmName run --username $userName --password $password --exe fsutil.exe -- DUMMY fsinfo volumeInfo e:

#
# It turns aut, this E: drive contains an unattend.xml file which apparently is used by Windows setup for … right, unattended setup.
#
VBoxManage guestcontrol $vmName run --username $userName --password $password --exe tree.exe   -- DUMMY e:

#
# Run a batch file
#
VBoxManage guestcontrol $vmName run   --exe "X:\aBatchFile.bat"   --username $userName --password $password -- DUMMY foo bar baz

#
# create a directory
#
VBoxManage guestcontrol $vmName mkdir    --username $userName --password $password "c:\users\$username\Software-to-be-installed"

#
# Copy a file from the host to the guest
#
VBoxManage guestcontrol $vmName copyto   --username $userName --password $password --target-directory "C:\users\$username\Software-to-be-installed" "$(get-location)\anotherBatchFile.bat"

#
# Execute the copied batch file
# It produces anotherBatchFile.log
#
VBoxManage guestcontrol $vmName run      --username $userName --password $password --exe  "c:\users\$userName\software-to-be-installed\anotherBatchFile.bat"

#
# Copy the log file from the guest to the host
#
VBoxManage guestcontrol $vmName copyfrom --username $userName --password $password --target-directory "$(get-location)\copiedFromGuest.log" "c:\users\$userName\anotherBatchFile.log"

#
# Revert to snapshot
#
# ? VBoxManage controlvm $vmName pause
    VBoxManage controlvm $vmName savestate
VBoxManage snapshot $vmName restore after-installation
VBoxManage startvm $vmName
VBoxManage controlvm $vmName resume

VBoxManage unregistervm --delete $vmName

# It turns aut, this E: drive contains an unattend.xml file which apparently is used by Windows setup for … right, unattended setup.
#
# tree is a .com, not a .exe

VBoxManage guestcontrol $vmName run --username $userName --password $password --exe tree.com   -- DUMMY /f e:

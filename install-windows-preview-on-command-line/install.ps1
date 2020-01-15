VBoxManage unattended install $vmName      `
  --iso=$isoFile                           `
  --user=$userName                         `
  --password=$password                     `
  --full-user-name='Tee Queue Eighty-Four' `
  --install-additions                      `
  --time-zone=CET                          `
  --post-install-command='VBoxControl guestproperty set installation_finished y'

#
#  The indicated post install command is executed right after A:\VBOXPOST.CMD has executed
#    E:\vboxadditions\VBoxWindowsAdditions.exe /S
#


# | out-null

# Use
#   --start-vm=…
# to also start the created virtual machine

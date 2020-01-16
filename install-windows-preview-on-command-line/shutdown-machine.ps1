# Send an ACPI shutdown signal to the virtual machine.
#
# Modern operating systems with ACPI support should
# trigger the operating system's shutdown sequence.
#
# However, when I tried that out, nothing happened.

VBoxManage controlvm $vmName acpipowerbutton

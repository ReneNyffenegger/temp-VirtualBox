echo  Wait until installation is finished

VBoxManage guestproperty wait $vmName installation_finished

# The set flag is visible with
#    VBoxManage guestproperty enumerate $vmName 

get-date

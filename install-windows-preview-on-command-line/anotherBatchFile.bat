@echo off
echo Another batch file
echo it was copied with VBoxManage guestcontrol ... copyto
echo execution date and time is %date% %time% > %~dp0%\anotherBatchFile.log

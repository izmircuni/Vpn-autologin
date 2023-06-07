REM use this batch script to automate the creation of the scheduled task for running the autovpnconnect batch script at startup.
@echo off
set TaskName="My Startup Task"
set ScriptPath="C:\Path\to\your\VPN_connection_user_login.bat"

REM Create the scheduled task
schtasks /create /tn %TaskName% /tr %ScriptPath% /sc onstart /ru System

REM Modify the task properties
schtasks /change /tn %TaskName% /ru System /rl highest

echo Startup task created successfully!
pause

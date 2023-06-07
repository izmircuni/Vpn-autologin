@echo off
set TaskName="My Startup Task"
set ScriptPath="C:\Path\to\your\script.bat"

REM Create the scheduled task
schtasks /create /tn %TaskName% /tr %ScriptPath% /sc onstart /ru System

REM Modify the task properties
schtasks /change /tn %TaskName% /ru System /rl highest

echo Startup task created successfully!
pause

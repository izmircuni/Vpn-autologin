@echo off

 

REM Replace "TEST123" with the actual name of your VPN connection
set VPNConnectionName=TEST123

 

REM Check if the VPN connection is already connected
netsh interface show interface name="%VPNConnectionName%" | findstr /i /c:"Connected" > nul 2>&1
if %errorlevel% neq 0 (
    REM VPN connection is not connected, display an error message and exit
    echo VPN connection is not established. Please connect to the VPN before logging in.
    timeout /t 5 > nul
    exit
)

 

REM VPN connection is connected, allow the user to log in
echo VPN connection is established. You can proceed with logging in.

 

REM Rest of the batch file...

 

REM Example: Mapping network drives
echo Mapping network drives...
net use Z: \\fileserver\sharedfolder /persistent:yes

 

REM Example: Launching an application
echo Starting the application...
start "My Application" "C:\Path\to\my_application.exe"

 

REM Example: Other commands and logic
echo Performing additional tasks...

 

REM End of the batch file

 

REM Pause the batch file to keep the Command Prompt window open (optional)
pause

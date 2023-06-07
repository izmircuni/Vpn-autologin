@echo off

REM Replace "YourVPNConnectionName" with the actual name of your VPN connection
set VPNConnectionName=YourVPNConnectionName

REM Check if the PC is on the lock screen
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\SessionData" > nul 2>&1
if %errorlevel% equ 0 (
    REM PC is on the lock screen, connect to VPN

    REM Check if the VPN connection is already connected
    netsh interface show interface name="%VPNConnectionName%" | findstr /i /c:"Connected" > nul 2>&1
    if %errorlevel% neq 0 (
        REM VPN connection is not connected, connect to VPN
        echo Connecting to VPN...
        rasdial "%VPNConnectionName%" your-username your-password
        echo Connected to VPN.
    ) else (
        REM VPN connection is already connected
        echo VPN is already connected.
    )
) else (
    REM PC is not on the lock screen
    echo PC is not on the lock screen.
)

REM Pause the batch file to keep the Command Prompt window open (optional)
pause

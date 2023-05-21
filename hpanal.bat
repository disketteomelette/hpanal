@echo off
echo  888    888 8888888b.     d8888                   888 
echo  888    888 888   Y88b   d88888                   888 
echo  888    888 888    888  d88P888                   888 
echo  8888888888 888   d88P d88P 888 88888b.   8888b.  888 
echo  888    888 8888888P" d88P  888 888 "88b     "88b 888 
echo  888    888 888      d88P   888 888  888 .d888888 888 
echo  888    888 888     d8888888888 888  888 888  888 888 
echo  888    888 888    d88P     888 888  888 "Y888888 888 
echo            HP Analytics Native App Liberator
echo      2023 (CC BY 4.0) - github.com/disketteomelette
echo.
echo *******************************************************************************
echo                     WARNING: USE AT YOUR OWN RISK
echo *******************************************************************************
echo This program is provided as is. I do not assume any responsibility for its use.
echo IMPORTANT: This script utilizes potentially dangerous instructions. I do not guarantee the functionality or safety of the script. 
echo By executing this program, you acknowledge that you are solely responsible for any consequences that may arise from its use. Proceed with caution and at your own risk.
echo *******************************************************************************
echo. 
echo Please note: This program requires administrative privileges to function properly. Make sure to run it as an administrator.
echo ----------- 
pause 
echo ----------- 
echo [i] Stopping and disabling HP services...
echo [*] HpTouchpointAnalyticsService:
net stop HpTouchpointAnalyticsService
sc config HpTouchpointAnalyticsService start=disabled
echo [*] HPSysInfoCap:
net stop HPSysInfoCap
sc config HPSysInfoCap start=disabled
echo [*] HPNetworkCap:
net stop HPNetworkCap
sc config HPNetworkCap start=disabled
echo [*] HPDiagsCap:
net stop HPDiagsCap
sc config HPDiagsCap start=disabled
echo [*] HPAppHelperCap:
net stop HPAppHelperCap
sc config HPAppHelperCap start=disabled
echo ----------- 
echo [i] Locating HP software folder...
setlocal enabledelayedexpansion 
cd C:\Windows\System32\DriverStore\FileRepository\ 
for /d %%I in ("hpanalyticscomp.inf*") do (
    echo *******************************************************************************
    echo                  INSTALLATION FOLDER FOUND! PLEASE CONFIRM
    echo *******************************************************************************
    echo The following HP Analytics driver/installation path has been found. Please confirm the path provided below before proceeding:
    echo - "%%~fI"
    echo. 
    echo IMPORTANT: Please ensure the accuracy of the installation path. Proceeding with the script will result in changing the permissions of all files and subfolders within the specified path, followed by their permanent deletion. If the provided path is incorrect, it is highly recommended to press CTRL+C now to terminate the program. By continuing with the execution of this script, you acknowledge that you have verified the installation path and agree to the potential consequences of altering permissions and permanently deleting files.
    pause
    echo [i] Going to "%%~fI"
    cd "%%~fI" 
    for /r %%F in (*) do (
        echo [i] Giving you permission on "%%~fF"
        takeown /f "%%~fF"
        icacls "%%~fF" /grant:r "S-1-5-11:(F)"
        echo [x] Deleting file "%%~fF"
        del /f "%%~fF"
    )
    cd /d ..
)
echo.
echo [!] PROCESS COMPLETED. Please verify that everything has been executed successfully. It is recommended to restart your PC and run this script again (even though it may cause errors) to remove any remaining files that could be in use. 

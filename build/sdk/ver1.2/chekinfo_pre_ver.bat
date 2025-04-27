@echo off
setlocal enabledelayedexpansion
title chekinfo - by frontline studios
color 9
chcp 65001 >nul
call :banner
call :menu

:menu
echo                         "+------------------------------------------------------+"
echo                         "| 1) Check system information                          |"
echo                         "| 2) View All IP Configuration                         |"
echo                         "| 3) Go back to PingIt                                 |"
echo                         "| 4) Exit                                              |"
echo                         "+------------------------------------------------------+"
echo.
set /p choice="Enter your choice: "
if "!choice!"=="1" (
    echo Checking system information... Please wait
    echo ============================================
    echo OS Information
    echo --------------------------------------------
    systeminfo | findstr /c:"OS Name"
    systeminfo | findstr /c:"OS Version"
    echo ============================================
    echo BIOS Information
    echo --------------------------------------------
    systeminfo | findstr /c:"System Type"
    echo ============================================
    echo Memory Information
    echo --------------------------------------------
    systeminfo | findstr /c:"Total Physical Memory"
    echo ============================================
    echo Processor Information
    echo --------------------------------------------
    wmic cpu get name
    echo ============================================
    echo Network IPv4/IPv6 Information
    echo --------------------------------------------
    ipconfig | findstr IPv4
    ipconfig | findstr IPv6
    echo.
    pause
    cls
    call :banner
    call :menu
) else if "!choice!"=="2" (
    ipconfig /all
    echo.
    pause
    cls
    call :banner
    call :menu
) else if "!choice!"=="3" (
    cls
    cd..
	cd..
	start pingit-v1.1.bat
	exit
) else if "!choice!"=="4" (
    exit
) else (
    echo.
    echo [ERROR] Invalid choice: "!choice!". Please enter a number between 1-4.
    pause
    cls
    call :banner
    call :menu
)

:banner
echo.
echo                           ██████╗██╗  ██╗███████╗██╗  ██╗██╗███╗   ██╗███████╗ ██████╗ 
echo                          ██╔════╝██║  ██║██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝██╔═══██╗
echo                          ██║     ███████║█████╗  █████╔╝ ██║██╔██╗ ██║█████╗  ██║   ██║
echo                          ██║     ██╔══██║██╔══╝  ██╔═██╗ ██║██║╚██╗██║██╔══╝  ██║   ██║
echo                          ╚██████╗██║  ██║███████╗██║  ██╗██║██║ ╚████║██║     ╚██████╔╝
echo                           ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝ 
echo.

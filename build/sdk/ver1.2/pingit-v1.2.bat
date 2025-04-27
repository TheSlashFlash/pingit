@echo off
color 9
title PingIt - by frontline studios
chcp 65001 >nul
rem TR | PingIt'in berrak kodu!
rem ENG | Clear code of PingIt!
rem TR | NOT: PingIt GPL-3.0 lisansiyla guvence altina alinmistir
rem ENG | NOTE: PingIt is secured with GPL-3.0 license
call :banner
:lang
echo 1) Turkce
echo.
echo 2) English
echo.
set /p choice="Please select a language: "

if "%choice%"=="1" (
    cls
    call :banner
    call :menutr
) else if "%choice%"=="2" (
    cls
    call :banner
    call :menueng
) else (
    cls
    call :elsemenulang
)

:menutr
echo                                     "+------------------------------------------------------+"
echo                                     "| 1) Hizli Pingleme Menusu                             |"
echo                                     "| 2) Istedigin adresi pingle                           |"
echo                                     "| 3) Dil menusune geri don - Go to language select menu|"
echo                                     "| 4) Chekinfo'yu dene (Ingilizce)                      |"
echo                                     "| 5) Hakkinda                                          |"
echo                                     "| 6) Cikis                                             |"
echo                                     "+------------------------------------------------------+"
echo.
set /p choice="Bir secenek secin: "
echo.

if "%choice%"=="1" (
    cls
	call :banner
	call :fastpingmenutr
) else if "%choice%"=="2" (
    cls
    call :banner
    call :custompingtr
) else if "%choice%"=="3" (
    cls
    call :banner
    call :lang
) else if "%choice%"=="4" (
    cd files
	cd chekinfo
	start chekinfo_pre_ver.bat
	exit
) else if "%choice%"=="5" (
    cls
	call :banner
	call :aboutmenutr
) else if "%choice%"=="6" (
    set /p choice="Cikmak istiyorsan y tusuna bas eger cikmak istemiyorsan n tusuna bas: "
    if "%choice%"=="y" (
        exit
    ) else (
        cls
        call :banner
        call :lang
    )
) else (
    cls
    call :elsemenutr1
)

:menueng
echo                                     "+------------------------------------------------------+"
echo                                     "| 1) Fast ping menu                                    |"
echo                                     "| 2) Ping a custom adress                              |"
echo                                     "| 3) Go to language select menu - Dil menusune geri don|"
echo                                     "| 4) Try Chekinfo                                      |"
echo                                     "| 5) About                                             |"
echo                                     "| 6) Exit                                              |"
echo                                     "+------------------------------------------------------+"
echo.
set /p choice="Choose something: "
echo.

if "%choice%"=="1" (
    cls
	call :banner
	call :fastpingmenueng
) else if "%choice%"=="2" (
    cls
	call :banner
    call :custompingeng
) else if "%choice%"=="3" (
    cls
    call :banner
	call :lang
) else if "%choice%"=="4" (
    cd files
	cd chekinfo
	start chekinfo_pre_ver.bat
	exit
	) else if "%choice%"=="5" (
    cls
	call :banner
	call :aboutmenueng
) else if "%choice%"=="6" (
    set /p choice="Cikmak istiyorsan y tusuna bas eger cikmak istemiyorsan n tusuna bas: "
    if /i "%choice%"=="y" (
        exit
    ) else (
        cls
        call :banner
		call :lang
    )
) else (
    cls
	call :elsemenueng1
)
	


:custompingtr
set /p ip=Pinglemek istediginiz IP adresini girin:
ping %ip%
echo.
echo %ip% Adresi pinglendi. Menuye geri donmek icin bir tusa basin...
echo.
pause >nul
cls
call :banner
call :menutr



:custompingeng
set /p ip=Write the IP adress you want to Ping:
ping %ip%
echo.
echo %ip% is pinged. To return to the menu press any button...
echo.
pause >nul
cls
call :banner
call :menueng

:elsemenutr1
call :banner
echo Yanlis secim. Lutfen gecerli bir rakam yaziniz.
echo.
echo Menuye donmek icin herhangi bir tusa basiniz...
pause >nul
cls
call :banner
call :menutr

:elsemenulang
call :banner
echo Yanlis secim. Lutfen gecerli bir rakam yaziniz - Wrong selection. Please type a correct number.
echo.
echo Dil secim menusune donmek icin herhangi bir tusa basiniz... - To go back to language select menu please press any button...
pause >nul
cls
call :banner
call :lang


:elsemenueng1
call :banner
echo Invalid selection. Please type a valid number.
echo.
echo To go back to the menu please press any button...
pause >nul
cls
call :banner
call :menueng

:aboutmenutr
echo PingIt GPL-3.0 lisansiyla guvence altina alinan ve .exe'ye donusturulen acik kaynakli batch dili ile yazilmis bir programdir.
echo.
echo Menuye donmek icin herhangi bir tus basiniz...
pause >nul
cls
call :banner
call :menutr

:aboutmenueng
echo PingIt is a open source program that is written on batch and converted to .exe that is secured with GPL-3.0 license
echo.
echo To go back menu please press any button...
pause >nul
cls
call :banner
call :menueng

rem TR | Herkes herseyi hizlica yapmak ister, bu yuzden hizli pingleme menusunu yaptik!

:fastpingmenutr
echo 1) Cloudflare DNS'i pingle (Onerilen)
echo 2) Google DNS'i pingle
echo 3) Quad9 DNS'i pingle
echo.
set /p choice="Pinglemek istedigin DNS'i sec: "
echo.
if "%choice%"=="1" (
    echo Cloudflare DNS'i pingliyorum...
    ping 1.1.1.1
    echo.
    echo Cloudflare DNS pinglendi devam etmek icin herhangi bir tusa basiniz...
    pause >nul
    cls
    call :banner
    call :menutr
) else if "%choice%"=="2" (
    echo Google DNS'i pingliyorum...
    ping 8.8.8.8
    echo.
    echo Google DNS pinglendi devam etmek icin herhangi bir tusa basiniz...
    pause >nul
    cls
    call :banner
    call :menutr
) else if "%choice%"=="3" (
    echo Quad9 DNS'i pingliyorum...
    ping 9.9.9.9
    echo.
    echo Quad9 DNS pinglendi devam etmek icin herhangi bir tusa basiniz...
    pause >nul
    cls
    call :banner
    call :menutr
) else (
    cls
	call :banner
    call :elsemenutrfastping
)

rem ENG | Everyone wants to do everything fast, that's why we made the fast ping menu!

:fastpingmenueng
echo 1) Ping Google DNS
echo 2) Ping Cloudflare DNS
echo 3) Ping Quad9 DNS
echo.
set /p choice="Choose The DNS that you want to ping: "
echo.
if "%choice%"=="1" (
    echo Pinging Cloudflare DNS
    ping 1.1.1.1
    echo.
    echo Cloudflare DNS has been pinged. Press any key to continue...
    pause >nul
    cls
    call :banner
    call :menueng
) else if "%choice%"=="2" (
    echo Pinging Google DNS
    ping 8.8.8.8
    echo.
    echo Google DNS has been pinged. Press any key to continue...
    pause >nul
    cls
    call :banner
    call :menueng
) else if "%choice%"=="3" (
    echo Pinging Quad9 DNS
    ping 9.9.9.9
    echo.
    echo Quad9 DNS has been pinged. Press any key to continue..
    pause >nul
    cls
    call :banner
    call :menueng
) else (
    cls
	call :banner
    call :elsemenuengfastping
)
	
:elsemenutrfastping
echo Yanlis secim. Lutfen gecerli bir rakam yaziniz.
echo.
echo Hizli ping menusune donmek icin herhangi bir tusa basiniz...
pause >nul
cls
call :banner
call :fastpingmenutr

:elsemenuengfastping
echo Invalid selection. Please type a valid number.
echo.
echo To go back to the fast ping menu please press any button...
pause >nul
cls
call :banner
call :fastpingmenueng





:banner
echo.
echo.
echo                                      ██████╗ ██╗███╗   ██╗ ██████╗ ██╗████████╗
echo                                      ██╔══██╗██║████╗  ██║██╔════╝ ██║╚══██╔══╝
echo                                      ██████╔╝██║██╔██╗ ██║██║  ███╗██║   ██║   
echo                                      ██║     ██║██║ ╚████║╚██████╔╝██║   ██║   
echo                                      ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝   ╚═╝  v1.2 by frontline studios
echo.
echo.

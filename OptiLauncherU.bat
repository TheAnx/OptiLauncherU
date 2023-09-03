@echo off
setlocal
setlocal EnableExtensions
setlocal enabledelayedexpansion
color 0F
title OptiLauncher v2.2A
set BATCH_VERSION=2.2.1
set API_URL=https://orl.theanx9.repl.co/launcher
set OPTID=%~dp0OptiData
chcp 65001 > nul

:: Este segundo Echo es para Windows 7
:: Por alguna razón Windows 7 no quiere leer el primero??
@echo off


:: --------------------------------------------------------------- INICIO --------------------------------------------------------------

set never=1
if never == 0 (
    :wgeterror
    mode con: cols=61 lines=21
    cls
    echo.
    echo        _____     _   _ __                     _          
    echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
    echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
    echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
    echo           /_/                                           
    echo.
    echo -------------------------------------------------------------
    echo.
    echo    Ha ocurrido un error desconocido descargando WGet.
    echo.
    echo    En lo que encontramos una solución al problema,
    echo    deberás descargar WGet y sus herramientas, manualmente.
    echo.
    echo    Se te abrirá el navegador descargando un archivo ZIP.
    echo    A ese archivo ZIP, lo deberás descomprimir en:
    echo    OptiData/Tools - ubicada en esta misma carpeta.
    echo.
    echo    Presioná cualquier tecla para descargar el ZIP...
    echo.
    pause > nul
    start "" "https://github.com/TheAnx/OptiLauncherU/raw/main/Tools.zip"
    mode con: cols=61 lines=13
    cls
    echo.
    echo        _____     _   _ __                     _          
    echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
    echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
    echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
    echo           /_/                                           
    echo.
    echo -------------------------------------------------------------
    echo.
    echo    Presioná cualquier tecla cuando ya hayas extraído
    echo    el archivo ZIP en la carpeta OptiData/Tools.
    echo.
    pause > nul)

for /f "tokens=4-5 delims=. " %%i in ('ver') do set wver=%%i.%%j

:menu
cd "!OPTID!\.."
set choicemenu=
set choice2=
set choice3=
set choiceX=
set choiceU=
set choiceI=
set num=
set num1=
set options=
set exists=
set filecount=
set byopti=
cls
if not exist "%~dp0OptiData" (mode con: cols=61 lines=26) else (mode con: cols=61 lines=21)
if not exist "%~dp0OptiData" mkdir "%~dp0OptiData"
if not exist "!OPTID!\Tools" mkdir "!OPTID!\Tools"
echo.
echo        _____     _   _ __                     _          
echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
echo           /_/                                           
echo                               The Ultimate Edition - v2.2A
echo -------------------------------------------------------------
if !wver! == 10.0 (echo.)
echo    OptiJuegos - Desarollador de OptiCraft
echo    javier_mileiok, FrAndroid - Desarolladores del launcher
echo    FrAndroid, StarX006 - Diseño
echo.

:: Descargar archivos necesarios, como wget y archivos de 7-Zip
if not exist "!OPTID!\Tools\wget.exe" (
    if not !wver! == 10.0 (
        echo    Descargando archivos necesarios 1/4...
        certutil.exe -urlcache -split -f "https://github.com/TheAnx/OptiLauncherU/raw/main/wget.exe" "!OPTID!\Tools\wget.exe" > nul
        if not exist "!OPTID!\Tools\wget.exe" (
            echo    La operación anterior falló, reintentando...
            echo    Descargando archivos necesarios 1/4...
            bitsadmin /transfer myDownloadJob /download /priority normal https://github.com/TheAnx/OptiLauncherU/raw/main/wget.exe "!OPTID!\Tools\wget.exe" > nul)
    ) else (echo    Descargando archivos necesarios 1/4...
        curl -s -L --connect-timeout 15 --retry-all-errors -o "!OPTID!\Tools\wget.exe" https://github.com/TheAnx/OptiLauncherU/raw/main/wget.exe
        if not exist "!OPTID!\Tools\wget.exe" (echo    La operación anterior falló, reintentando...
            echo    Descargando archivos necesarios 1/4...
            certutil.exe -urlcache -split -f "https://github.com/TheAnx/OptiLauncherU/raw/main/wget.exe" "!OPTID!\Tools\wget.exe" > nul)))
if not exist "!OPTID!\Tools\wget.exe" (goto wgeterror)
if not exist "!OPTID!\Tools\7za.exe" (
        echo    Descargando archivos necesarios 2/4...
        "!OPTID!\Tools\wget" -q --connect-timeout=15 --tries=3 -O "!OPTID!\Tools\7za.exe" https://github.com/TheAnx/OptiLauncherU/raw/main/7za.exe) 
if not exist "!OPTID!\Tools\7zxa.dll" (
        echo    Descargando archivos necesarios 3/4...
        "!OPTID!\Tools\wget" -q --connect-timeout=15 --tries=3 -O  "!OPTID!\Tools\7zxa.dll" https://github.com/TheAnx/OptiLauncherU/raw/main/7zxa.dll) 
if not exist "!OPTID!\Tools\7za.dll" (
        echo    Descargando archivos necesarios 4/4...
        "!OPTID!\Tools\wget" -q --connect-timeout=15 --tries=3 -O "!OPTID!\Tools\7za.dll" https://github.com/TheAnx/OptiLauncherU/raw/main/7za.dll
        echo.) 

echo -------------------------------------------------------------
if !wver! == 10.0 (echo.)
echo    1. OptiCraft Bedrock
echo    2. OptiCraft Java
echo    3. Actualizar versiones
echo    4. Extras
echo.
set /p choicemenu=Seleccioná una opción: 
echo.
echo -------------------------------------------------------------
echo.

if not defined choicemenu (set "choicemenu="
    goto menu
) else if !choicemenu!==1 (set "choicemenu="
    goto OpB
) else if !choicemenu!==2 (set "choicemenu="
    goto OpJ
) else if !choicemenu!==3 (set "choicemenu="
    goto OpU
) else if !choicemenu!==4 (set "choicemenu="
    goto OpE) else (goto menu)


:: ------------------------------------------------------------- BEDROCK -------------------------------------------------------------

:OpB
cls
mode con: cols=61 lines=24
echo.
echo        _____     _   _ __                     _          
echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
echo           /_/                                           
echo.
echo -------------------------------------------------------------
if !wver! == 10.0 (echo.)
echo    0. Inicio
echo.
echo    1. Ejecutar OptiCraft 1.7.3.1
echo    2. Ejecutar OptiCraft 1.9.1.0
echo    3. Ejecutar OptiCraft 1.12.0
echo    4. Ejecutar OptiCraft 1.14.31
echo    5. Ejecutar OptiCraft 1.16.12
echo    6. Ejecutar OptiCraft 1.17.30
echo    7. Ejecutar OptiCraft 1.18.31
echo    8. Ejecutar OptiCraft 1.19.52 
echo    9. Ejecutar OptiCraft 1.20.10
echo.
echo    10. Ejecutar OptiCraft 1.14.32 DEV
echo.
set /p choice2=Seleccioná una opción: 
echo.
echo -------------------------------------------------------------
echo.

if !choice2! == 0 (mode con: cols=61 lines=20 && goto menu)

if !choice2! == 5 (set 5a= OpenGL 4.1
    set 5b= OpenGL 4.1) else (set 5a=
    set 5b=)
if not !choice2! == 10 (set byopti= By OptiJuegos
    set optic=OptiCraft )
if !choice2! == 10 (set 10b=BetterDEV 
    set optic=Minecraft Bedrock )

set 1=1.7.3.1
set 2=1.9.1.0
set 3=1.12.0
set 4=1.14.31
set 5=1.16.12
set 6=1.17.30
set 7=1.18.31
set 8=1.19.52
set 9=1.20.10
set 10=1.14.32

if exist "!OPTID!\!optic!!10b!!%choice2%!!byopti!!5b!\" (
    :runBE
    cd "!OPTID!\*!%choice2%!*\"
    cd "*!%choice2%!*\"
    if not !choice2! == 10 (start "" "OptiCraft.exe") else (start "" "Minecraft.Windows.exe")
    mode con: cols=61 lines=4
    cls
    echo.
    echo                     Se ejecutó OptiCraft.
    echo                   Podés cerrar esta ventana
    pause > nul
    goto menu
) else (
    mode con: cols=61 lines=4
    cls
    echo.
    echo                No se pudo encontrar OptiCraft.
    echo         Presioná cualquier tecla para descargarlo...
    pause > nul
    cls
    echo.
    echo        Descargando... Esto puede tardar varios minutos
    echo.
    if not !choice2! == 10 ("!OPTID!\Tools\wget" -q --show-progress --connect-timeout=15 --tries=3 -O "!OPTID!\OptiCraft-!%choice2%!-By-OptiJuegos.7z" https://github.com/TheAnx/OptiCraft-Archive/releases/download/Bedrock/OptiCraft-!%choice2%!-By-OptiJuegos.7z) else (
        "!OPTID!\Tools\wget" -q --show-progress --connect-timeout=15 --tries=3 -O "!OPTID!\OptiCraft-!%choice2%!-By-OptiJuegos.7z" https://github.com/TheAnx/OptiCraft-Archive/releases/download/Bedrock/Minecraft.Bedrock.BetterDEV.1.14.32.7z)
    mode con: cols=61 lines=1
    "!OPTID!\Tools\7za" x "!OPTID!\OptiCraft-!%choice2%!-By-OptiJuegos.7z" -o./OptiData
    del "!OPTID!\OptiCraft-!%choice2%!-By-OptiJuegos.7z"
    goto runBE)
goto menu


:: --------------------------------------------------------------- JAVA ---------------------------------------------------------------

:OpJ
cls
mode con: cols=61 lines=18
echo.
echo        _____     _   _ __                     _          
echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
echo           /_/                                           
echo.
echo -------------------------------------------------------------
if !wver! == 10.0 (echo.)
echo    0. Inicio
echo.
echo    1. Ejecutar OptiCraft Java 1.7.10
echo    2. Ejecutar OptiCraft Java 1.8.9
echo    3. Ejecutar OptiCraft Java 1.12.2
echo    4. Ejecutar OptiCraft Java 1.16.5
echo    5. Ejecutar OptiCraft Java 1.20
echo.
set /p choice3=Seleccioná una opción: 
echo.
echo -------------------------------------------------------------
echo.

if !choice3! == 0 (goto menu)

:runjava

set 1=1.7.10
set 2=1.8.9
set 3=1.12.2 FORGE
set 4=1.16.5
set 5=1.20.0

if not !choice3! == 1 (set javaA=JAVA.)


if exist "!OPTID!\OptiCraft !%choice3%!\" (set exists=1)
if exist "!OPTID!\OptiCraft JAVA !%choice3%!\" (set exists=1)
if exist "!OPTID!\OptiCraft Java !%choice3%!\" (set exists=1)
if exist "!OPTID!\OptiCraft JAVA CLIENTS !%choice3%!\" (set exists=1)

if not !exists! == 1 (set 3=1.12.2.FORGE
    mode con: cols=61 lines=4
    cls
    echo.
    echo               No se pudo encontrar OptiCraft.
    echo         Presioná cualquier tecla para descargarlo...
    pause > nul
    cls
    echo.
    echo        Descargando... Esto puede tardar varios minutos
    echo.
    "!OPTID!\Tools\wget" -q --show-progress --connect-timeout=15 --tries=3 -O "!OPTID!\OptiCraft.!javaA!!%choice3%!.7z" https://github.com/TheAnx/OptiCraft-Archive/releases/download/Java/OptiCraft.!javaA!!%choice3%!.7z
    mode con: cols=61 lines=1
    "!OPTID!\Tools\7za" x "!OPTID!\OptiCraft.!javaA!!%choice3%!.7z" -o./OptiData
    del "!OPTID!\OptiCraft.!javaA!!%choice3%!.7z"
    goto runjava)


if !exists! == 1 (cd "!OPTID!\OptiCraft !%choice3%!\"
    cd "!OPTID!\OptiCraft JAVA !%choice3%!\"
    cd "!OPTID!\OptiCraft JAVA CLIENTS !%choice3%!\"
    set filecount=11
    for %%A in (*) do set /a filecount+=1
    cls
    mode con: cols=61 lines=!filecount!
    echo.
    echo        _____     _   _ __                     _          
    echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
    echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
    echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
    echo           /_/                                           
    echo.
    echo -------------------------------------------------------------
    for /f tokens^=* %%i in ('where .:*.bat') do (
    set /a num1=!num1!+1
    set options=%%~nxi
    echo    !num1!. !options:~2,-4!
    )
    echo.
    set /p num=Seleccioná una opción: 

    where !num!-* > tmp
    set /p batdir= < tmp
    del tmp
    start "New Window" cmd /c "!batdir!"

    mode con: cols=61 lines=4
    cls
    echo.
    echo                     Se ejecutó OptiCraft.
    echo                   Podés cerrar esta ventana
    pause > nul
    goto menu)
goto menu


:: --------------------------------------------------------------- EXTRAS --------------------------------------------------------------

:OpE
chcp 65001 > nul
cls
mode con: cols=61 lines=21
echo.
echo        _____     _   _ __                     _          
echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
echo           /_/                                           
echo.
echo -------------------------------------------------------------
if !wver! == 10.0 (echo.)
echo    0. Inicio
echo.
echo    1. Ejecutar Craftsman
echo    2. Ejecutar DxCPL
echo    3. Descargar VC++ Installer
echo    4. Abrir licencia
echo    5. Ver GitHub del launcher
echo    6. Solucionar problemas
echo    7. Preguntas frecuentes
echo    8. Actualizar launcher
echo.
set /p choiceX=Seleccioná una opción: 
echo.
echo -------------------------------------------------------------
echo.

if !choiceX! == 0 (goto menu)

if !choiceX! == 4 (start "" https://www.gnu.org/licenses/gpl-3.0.txt
    goto OpE)

if !choiceX! == 5 (start "" https://github.com/TheAnx/OptiLauncherU
    goto OpE)

if !choiceX! == 6 (goto issues)

if !choiceX! == 7 (goto issues)

:OpE2

set 1a="!OPTID!\Craftsman MOD PC PORT By OptiJuegos\"
set 1b=https://cdn.discordapp.com/attachments/1065489877497548861/1141132649067458690/Craftsman_MOD_PC_PORT_By_OptiJuegos.7z
set 1c="!OPTID!\Craftsman_MOD_PC_PORT_By_OptiJuegos.7z"
set 1d=!OPTID!\Craftsman MOD PC PORT By OptiJuegos\Craftsman.exe

set 2a=!OPTID!\dxcpl.exe
set 2b=https://cdn.discordapp.com/attachments/1092536202814574733/1116460790334111904/dxcpl.zip
set 2c="!OPTID!\dxcpl.zip"
set 2d="!OPTID!\dxcpl.exe"

set 3a="!OPTID!\Tools\vsc"
set 3b=https://github.com/TheAnx/OptiCraft-Archive/releases/download/Misc/Visual-C-Runtimes-All-in-One-May-2023.zip
set 3c="!OPTID!\Tools\vsc\Visual-C-Runtimes-All-in-One-May-2023.zip"

if !choiceX! == 8 (
    for /f %%i in ('curl --connect-timeout 5 --max-time 5 -s !API_URL!') do set LAUNCHER_VERSION=%%i
    if "!BATCH_VERSION!" == "!LAUNCHER_VERSION!" (mode con: cols=61 lines=4
        cls
        echo.
        echo          El launcher ya está en su última versión!           
        echo.
        pause > nul
        goto OpE
    ) else (mode con: cols=61 lines=5
        cls
        echo.
        echo               Se encontró una actualización.
        echo         Presioná cualquier tecla para descargarla...
        echo.
        pause > nul
        cls
        echo.
        echo      Descargando... Esto puede tardar unos segundos
        echo.
        "!OPTI_DATA_FOLDER!\Tools\wget.exe" -q --show-progress --connect-timeout=15 --tries=3 -O OptiLauncherU.exe  https://orl.theanx9.repl.co/OptiLauncherU.exe
        echo.
        echo                   Se actualizó el launcher.
        echo                   Cerralo y volvelo a abrir
        echo.
        pause > nul
        )
        goto menu) 

if exist !%choiceX%a! (if not !choiceX! == 3 (start "" "!%choiceX%d!") else (start "New Window" cmd /c "!OPTID!\Tools\vsc\install_all.bat")
    mode con: cols=61 lines=4
    cls
    echo.
    echo                          Se ejecutó.
    echo                   Podés cerrar esta ventana
    pause > nul
    goto menu) else (mode con: cols=61 lines=4
    cls
    echo.
    echo                    No se pudo encontrar.
    echo         Presioná cualquier tecla para descargarlo...
    pause > nul
    echo.
    echo        Descargando... Esto puede tardar varios minutos
    echo.
    if !choiceX! == 3 (mkdir "!OPTID!/Tools/vsc")
    "!OPTID!\Tools\wget" -q --show-progress --connect-timeout=15 --tries=3 -O "!%choiceX%c!" "!%choiceX%b!"
    mode con: cols=61 lines=1
    if not !choiceX! == 3 ("!OPTID!\Tools\7za" x "!%choiceX%c!" -o./OptiData) else ("!OPTID!\Tools\7za" x "!%choiceX%c!" -o./OptiData/Tools/vsc)
    del "!%choiceX%c!"
    goto OpE2)
goto menu


:: ------------------------------------------------------------- UPDATER -------------------------------------------------------------

:OpU
chcp 65001 > nul
cls
mode con: cols=61 lines=25
echo.
echo        _____     _   _ __                     _          
echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
echo           /_/                                           
echo.
echo -------------------------------------------------------------
if !wver! == 10.0 (echo.)
echo    Antes de continuar, debés saber que las actualizaciones
echo    pueden tardar aproximadamente 24 horas en subirse.
echo.
echo    Si OptiJuegos acaba de sacar una actualización,
echo    lo más posible es que tengás que esperar para poder
echo    actualizar la versión usando este launcher.
echo.
echo    Alternativamente, podés extraer la carpeta de una
echo    nueva versión en la carpeta "OptiData" ubicada en la
echo    carpeta donde se encuentra este launcher, aunque
echo    hacer esto puede causar problemas.
echo.
echo    Una vez entendido eso,
echo    presioná cualquier tecla para continuar.
echo.
pause > nul

chcp 65001 > nul
cls
mode con: cols=61 lines=32
echo.
echo        _____     _   _ __                     _          
echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
echo           /_/                                           
echo.
echo -------------------------------------------------------------
if !wver! == 10.0 (echo.)
echo                Qué versión querés actualizar?
echo.
echo    0. Inicio
echo.
echo    1. OptiCraft Bedrock 1.7.3.1
echo    2. OptiCraft Bedrock 1.9.1.0
echo    3. OptiCraft Bedrock 1.12.0
echo    4. OptiCraft Bedrock 1.14.31
echo    5. OptiCraft Bedrock 1.16.12
echo    6. OptiCraft Bedrock 1.17.30
echo    7. OptiCraft Bedrock 1.18.31
echo    8. OptiCraft Bedrock 1.19.52
echo    9. OptiCraft Bedrock 1.20.10
echo.
echo --------------------------- JAVA ----------------------------
echo.
echo    10. OptiCraft Java 1.7.10
echo    11. OptiCraft Java 1.8.9
echo    12. OptiCraft Java 1.12.2
echo    13. OptiCraft Java 1.16.5
echo    14. OptiCraft Java 1.20.0
echo.
set /p choiceU=Seleccioná una opción: 

if !choiceU! == 0 (goto menu)

:: Para descargas
set 1=-1.7.3.1-By-OptiJuegos
set 2=-1.9.1.0-By-OptiJuegos
set 3=-1.12.0-By-OptiJuegos
set 4=-1.14.31-By-OptiJuegos
set 5=-1.16.12-By-OptiJuegos
set 6=-1.17.30-By-OptiJuegos
set 7=-1.18.31-By-OptiJuegos
set 8=-1.19.52-By-OptiJuegos
set 9=-1.20.10-By-OptiJuegos

set 10=.1.7.10
set 11=1.8.9
set 12=1.12.2.FORGE
set 13=1.16.5
set 14=1.20.0

:: Para chequeo de instalación
set 1b= 1.7.3.1 By OptiJuegos
set 2b= 1.9.1.0 By OptiJuegos
set 3b= 1.12.0 By OptiJuegos
set 4b= 1.14.31 By OptiJuegos
set 5b= 1.16.12 By OptiJuegos
set 6b= 1.17.30 By OptiJuegos
set 7b= 1.18.31 By OptiJuegos
set 8b= 1.19.52 By OptiJuegos
set 9b= 1.20.10 By OptiJuegos

set 10b= 1.7.10
set 11b=1.8.9
set 12b=1.12.2.FORGE
set 13b=1.16.5
set 14b=1.20.0


if not !choiceU! LEQ 9 (set edition=Java) else (set edition=Bedrock)
if not !choiceU! LEQ 10 (set javaA=.JAVA.
    set javaB= Java ) else (set javaA=
    set javaB=)


if !choiceU! == 5 (set 5a= OpenGL 4.1) else (set 5a=)

:: Chequeo para ver si la versión ya está instalada
:: No se puede usar "if exist" porque esta función es case sensitive
set exists=1
cd "!OPTID!\OptiCraft!javaB!!%choiceU%b!!5a!\" || set exists=0


if !exists! == 0 (mode con: cols=61 lines=4
    cls
    echo.
    echo                Esta versión no está instalada.
    echo    La versión debe estar instalada para poder actualizarse
    pause > nul
    goto menu
) else (cd !OPTID!\..
    mode con: cols=61 lines=4
    cls
    echo.
    echo       Actualizando... Esto puede tardar varios minutos
    echo.
    rd "!OPTID!\OptiCraft!javaB!!%choiceU%b!!5a!\" /s /q
    "!OPTID!\Tools\wget" -q --show-progress --connect-timeout=15 --tries=3 -O "!OPTID!\OptiCraft-!javaA!!%choiceU%!.7z" https://github.com/TheAnx/OptiCraft-Archive/releases/download/!edition!/OptiCraft!javaA!!%choiceU%!.7z
    mode con: cols=61 lines=1
    "!OPTID!\Tools\7za" x "!OPTID!\OptiCraft-!javaA!!%choiceU%!.7z" -o./OptiData
    del "!OPTID!\OptiCraft-!javaA!!%choiceU%!.7z"
    mode con: cols=61 lines=4
    cls
    echo.
    echo                   Se actualizó OptiCraft.
    echo           Presioná cualquier tecla para ir al menú
    pause > nul
    goto menu)
goto menu


:: ---------------------------------------------------------- SKILL ISSUES -----------------------------------------------------------

:issues
mode con: cols=61 lines=33
cls
echo.
echo        _____     _   _ __                     _          
echo       /     /___/ /_/_/  /  ____ _ _ ___ ____/ /____ ___
echo      /  /  / . /  _/ /  /__/ . // / /   /  _/   / -_/ _/
echo     /_____/  _/_/ /_/_____/_/_//___/_/_/___/_/_/___/_/  
echo           /_/                                           
echo.
echo -------------------------------------------------------------
echo.
if !choiceX! == 6 (echo                      Qué problema tenés?) else (echo                     Preguntas frecuentes)
echo.
echo    1.  El juego me crashea al iniciar o no inicia
echo    2.  El juego dice que me falta un DLL
echo    3.  Tengo problemas al conectarme a servidores
echo    4.  Me sale ConnectionID, y no la IP y el puerto
echo    5.  Mi antivirus detecta OptiCraft como virus
echo    6.  Como descargar AddOns o Mods
echo    7.  Como jugar online en las versiones post-1.14
echo    8.  ¿Por qué no hay versiones más antiguas?
echo    9.  No me puedo unir a servidores de Bedrock original
echo    10. ¿Por qué no hay servidores en versiones post-1.14?
echo    11. Tengo muchos problemas en versiones post-1.14
echo    12. Como acceder al Marketplace en OptiCraft
echo    13. Como se hacen estas versiones de OptiCraft?
echo    14. Requisitos mínimos de OptiCraft
echo    15. Cuando juego 1.9-1.12 no puedo crear mundos
echo    16. Como cambiar la skin en OptiCraft Java
echo    17. Como meter mods a OptiCraft Java
echo    18. Como añadirle más RAM a OptiCraft Java
echo    19. Puedo subir OptiCraft a otro sitio web?
echo    20. Otra información...
echo.
set /p choiceI=Seleccioná una opción: 

if !choiceI! == 1 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137097271582810")
if !choiceI! == 2 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137097271582810")
if !choiceI! == 3 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137135691407490")
if !choiceI! == 4 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137135691407490")
if !choiceI! == 5 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137158462283906")
if !choiceI! == 6 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137158462283906")
if !choiceI! == 7 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137182353039431")
if !choiceI! == 8 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137182353039431")
if !choiceI! == 9 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137224178643044")
if !choiceI! == 10 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137224178643044")
if !choiceI! == 11 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137258802618368")
if !choiceI! == 12 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137258802618368")
if !choiceI! == 13 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137379657285682")
if !choiceI! == 14 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137379657285682")
if !choiceI! == 15 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137404282048582")
if !choiceI! == 16 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137404282048582")
if !choiceI! == 17 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137493901758505")
if !choiceI! == 18 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137493901758505")
if !choiceI! == 19 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137818016587898")
if !choiceI! == 20 (start "" "https://discord.com/channels/1061486786716651561/1092536202814574733/1136137818016587898")
goto menu

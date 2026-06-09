@echo off
chcp 65001 >nul
:intro
COLOR 8A
echo.    
echo                            ╔══════════════════════════════════════════╗
echo                            ║           • IT TOOLS MANAGER •           ║
echo                            ╠══════════════════════════════════════════╣
echo                            ║               %date%             ║
echo                            ║                                          ║
echo                            ║               %time%                ║
echo                            ║                                          ║
echo                            ║         Compilado por Axel Van Dyck      ║
echo                            ║                                          ║
echo                            ║       https://github.com/avandyck16      ║
echo                            ║                                          ║
echo                            ╚══════════════════════════════════════════╝
echo.
echo			                              ) )
echo			                               ( (
echo			                              ) )
echo			                            ...........
echo			                            ^|         ^|═╗
echo			                            ^|         ^| ║
echo			                            ^|         ^|═╝
echo			                            \         /
echo			                             \       /
echo			                              `.....'
echo			                              Coffee'
ping -n 4 127.0.0.1 > NUL

REM MENU PRINCIPAL
:menuprincipal
cls
COLOR 30
echo.
echo.
echo.
echo.
echo.
echo 	╔══════════════════════════════════════════╗
echo 	║           ► Menu de Opciones             ║
echo 	╠══════════════════════════════════════════╣
echo 	║ [1] ▶ REDES                              ║
echo 	║                                          ║
echo 	║                                          ║	=================================================
echo 	║ [2] ▶ SEGURIDAD                          ║
echo 	║                                          ║	• Selecciona una Categoria:
echo 	║                                          ║
echo 	║ [3] ▶ MANTENIMIENTO                      ║	→ Teclea el numero de tu eleccion y pulsa Enter
echo 	║                                          ║
echo 	║                                          ║	=================================================
echo 	║ [4] ▶ ----------------                   ║
echo 	║                                          ║
echo 	║                                          ║
echo 	║ [5] ▶ VER STAR WARS EPISODE IV           ║
echo 	║                                          ║
echo 	║                                          ║
echo 	║ [e] ✖   SALIR                            ║
echo 	║                                          ║
echo 	╚══════════════════════════════════════════╝
echo.
set /p op= Teclea una seleccion : 
if %op%==1 goto menuredes
if %op%==2 goto menusegur
if %op%==3 goto menumtto
if %op%==4 goto actservice
if %op%==5 goto storewars
if %op%==e goto exitss
if not "%op%"==12345e goto menuprincipal
REM _-----------------_ 
:actservice
cls
COLOR 0B
echo                            ╔══════════════════════════════════════════╗
echo                            ║           • Starting Service... •        ║
echo                            ╚══════════════════════════════════════════╝
ping -n 4 127.0.0.1 > NUL
goto actservice2
REM --------------------------------------------------------------------------------------------------
:actservice2
CLS
COLOR 0B
echo.
echo.
echo.
echo.
echo.
echo                            ╔══════════════════════════════════════════╗
echo                            ║           • Product Activation •         ║
echo                            ╠══════════════════════════════════════════╣
echo                            ║                                          ║
echo                            ║     - This is a community Version        ║
echo                            ║                                          ║
echo                            ║               Activation is              ║
echo                            ║                                          ║
echo                            ║               Disabled...                ║
echo                            ║                                          ║
echo                            ╚══════════════════════════════════════════╝
echo.
set /p op= Teclea una seleccion : 
if %op%==1 goto menuprincipal 
if %op%==2 goto menuprincipal
if %op%==3 goto menuprincipal
if not "%op%"==123e goto menuprincipal
REM ----------------------------------------------------------------------------------
:menuredes
cls
echo 	A. AGREGAR UNA IMPRESORA
echo.
echo 	B. AJUSTAR VELOCIDAD DE RED
echo.
echo		C. ACTIVAR EL USO COMPARTIDO
echo.
echo 	D. ABRIR DISPOSITIVOS DE RED
echo.
echo 	E. CONTROL DE CUENTAS DE USUARIO
echo.
echo		F. DETECTAR MI DIRECCION IP
echo.
echo		G. DNS FLUSH
echo.
echo		H. HISTORIAL DE CONTRASENAS
echo. 
echo 	I. MONITOR DE CONEXIONES ACTIVAS
echo.
echo		J. MOSTRAR CONFIGURACION TCP/IP
echo.	
echo 	K. PROBAR LAS CONEXIONES
echo.
echo		L. REINICIAR ADAPTADORES DE RED
echo.
echo		M. REINICIAR PRINT SPOOLER
echo.
echo		N. RENOVAR DIRECCION IP
echo.
echo		X. VOLVER
echo.
set /p op= 		Ingresa una seleccion : 
IF %op%==A goto agregarimp
IF %op%==a goto agregarimp
if %op%==B goto ajustarvelred
if %op%==b goto ajustarvelred
if %op%==C goto usocomp
if %op%==c goto usocomp
if %op%==D goto encpa
if %op%==d goto encpa
if %op%==E goto cuentasusu
if %op%==e goto cuentasusu
if %op%==F goto obtenip
if %op%==f goto obtenip
if %op%==G goto flushdn
if %op%==g goto flushdn
if %op%==H goto histor
if %op%==h goto histor
if %op%==I goto monitorca
if %op%==i goto monitorca
if %op%==J goto mostrip
if %op%==j goto mostrip
if %op%==K goto probcon
if %op%==k goto probcon
if %op%==L goto rared
if %op%==l goto rared
if %op%==M goto printspoo
if %op%==m goto printspoo
if %op%==N goto renovip
if %op%==n goto renovip
if %op%==X goto menuprincipal
if %op%==x goto menuprincipal
IF NOT "%op%"=="abcdefghijklmex" cls & goto menuredes
IF NOT "%op%"=="ABCDEFGHIJKLMEX" cls & goto menuredes
:agregarimp
cls
echo Ejecutando...
control printers
goto menuredes
:ajustarvelred
cls
echo Ajuste de velocidad de Red
echo.
echo 	[1] Revisar ajustes globales
echo 	[2] Revisar MS Heuristics
echo 	[3] Volver
set /p op=	Seleccionar:
if %op%==1 goto globals
if %op%==2 goto heur
if %op%==3 goto menuredes
IF NOT "%op%"==123 cls & goto ajustarvelred
:globals
cls
netsh int tcp show global
echo ====================================================================
echo Change if "Nivel de ajuste automatico de ventana" or
echo "reception window auto adjust level" is not in Normal
echo 			CAMBIAR?
:menucambiaresto
echo [1] Si
echo [2] Volver
set /p op= Seleccionar : 
if %op%==1 goto chnge
if %op%==2 goto ajustarvelred
:chnge
netsh int tcp set global autotuninglevel=normal
echo LISTO
pause
goto ajustarvelred
:heur
cls
netsh interface tcp show heuristics
echo.
echo ====================================================================
echo Change if ENABLED
echo 			CAMBIAR?
:menucambiaheur
echo [1] Si
echo [2] Volver
set /p op= Seleccionar : 
if %op%==1 goto chngeheur
if %op%==2 goto ajustarvelred
:chngeheur
netsh interface tcp set heuristics disabled
echo LISTO
pause
goto ajustarvelred
REM _----------------------------------_-----------------_
:usocomp
cls
echo                     ╔═════════════════════════════════════════════════════════════════╗
echo                     ║           • Uso compartido de Archivos e Impresoras •           ║
echo                     ╚═════════════════════════════════════════════════════════════════╝
echo ===========================================================================
echo 
echo ===========================================================================
echo.
:menuusocomp
echo [1] Activar
echo [2] Desactivar
echo [3] Volver
set /p op= Seleccionar :
if %op%==1 goto activa
if %op%==2 goto deactiva
if %op%==3 goto menuredes
echo.
echo ===========================================================================
echo ===========================================================================
:activa
cls
netsh firewall set service type=fileandprint mode=enable profile=all
echo.
echo Presiona cualquier tecla para volver.
pause>nul
cls
goto menuusocomp
echo ===========================================================================
:deactiva
cls
netsh firewall set service type=fileandprint mode=disable profile=all
echo.
echo Presiona cualquier tecla para volver.
pause>nul
cls
goto menuusocomp
REM _-----------------__-------------------
:encpa
echo Abriendo
ncpa.cpl
goto menuredes
:cuentasusu
cls
echo.
echo                     ╔════════════════════════════════════════════╗
echo                     ║           • Control de Cuentas •           ║
echo                     ╚════════════════════════════════════════════╝
echo.
echo.
echo [1] Administrador de cuentas de usuario
echo [2] Activar o Desactivar la cuenta de Administrador
echo [3] Volver
set /p op=Seleccionar:
if %op%==1 lusrmgr.msc & goto cuentasusu
if %op%==2 goto menucuentas
if %op%==3 goto menuredes
IF NOT %op%==123 cls & goto cuentasusu
:menucuentas
cls
echo 	Control de cuenta de Administrador
echo.
echo.
echo [1] Activar
echo [2] Desactivar
echo [3] Volver
echo.
set /p op=  Seleccionar :
if %op%==1 net user Administrador /active:yes && echo Cuenta habilitada, ve a la consola de control de usuarios & pause & cls & goto cuentasusu
if %op%==2 net user Administrador /active:no && echo Cuenta desactivada & pause & cls & goto cuentasusu
if %op%==3 goto cuentasusu
IF NOT %op%==123 cls & goto cuentasusu
:obtenip
cls
echo                     ╔═══════════════════════════════════════════════════╗
echo                     ║           • Deteccion de direccion IP •           ║
echo                     ╚═══════════════════════════════════════════════════╝
echo.
ipconfig|FINDSTR "IPv4"
echo.
echo ============================================
echo.
echo [1] Informacion detallada 
echo [2] Configurar adaptadores de Red
echo [3] Regresar
set /p op=	Seleccionar :
if %op%==1 ipconfig /all & pause 
if %op%==2 ncpa.cpl
if %op%==3 goto menuredes
IF NOT %op%==123 cls & goto obtenip
echo Presiona cualquier tecla para volver.
pause>nul
goto menuredes
:flushdn
cls
echo                     ╔══════════════════════════════════════════╗
echo                     ║           • Purgar Cache DNS •           ║
echo                     ╚══════════════════════════════════════════╝
echo.
echo                              ⚠
echo Purgar el cache de informacion DNS elimina informacion obsoleta que puede
echo ralentizar el desempeno de la Red. Puede experimentar cierta lentitud al inicio
echo pero toma efecto rapidamente.
echo Desea continuar?
echo ===========================================================================
echo [1] Continuar
echo [2] Volver
set /p op=Seleccionar:
if %op%==1 goto dncrr
if %op%==2 goto menuredes
if not %op%==12 cls & goto flushdn
:dncrr
cls
echo.
echo DNS FLUSH initialization
echo.
ipconfig /flushdns
echo ============================================================================
echo Finalizado.
pause
goto menuredes
:histor
cls
echo Historial de Contrasenas de Red
echo ===========================================================================
echo.
echo Muestra un historial con las claves de Red a las que este equipo se ha conectado
echo Si lo que buscas es hackear una red nueva, no es por aqui muchachon
echo.
echo ===========================================================================
pause
netsh wlan show profile
echo ===========================================================================
SET /P RED= Escribe aqui el nombre de la Red deseada - Si tiene espacios, ponla entre comillas : 
echo ===========================================================================
goto retrievedispass
:retrievedispass
netsh wlan show profile %RED% key=clear
echo ===========================================================================
@echo off
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Encuentra la clave de red al final del apartado CONFIGURACION DE SEGURIDAD')"
MSG  * Encuentra la clave de red al final del apartado CONFIGURACION DE SEGURIDAD
pause
goto menuredes
:monitorca
cls
echo ============================================
echo 	Monitor de conexiones activas
echo 	     %date% , %time%
echo ============================================
echo	Para mostrar una guia, presiona 1
echo	Para continuar presiona 2
echo	Para volver presiona e
set /p op= 
if %op%==1 goto showguides
if %op%==2 goto doit
if %op%==e goto menuredes
if not "%op%"==12e cls & echo Opcion invalida & goto monitorca
echo ============================================
:showguides
cls
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo When a malware is running in the background, it must establish a connection 
echo to the outside internet world. They also use a TCP or UDP protocol to establish 
echo the internet connection and send private information outside. 
echo Every process is assigned a PID (Process ID) in Windows.
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo Run the command run netstat -b -o 5 as Admin.
echo Check if you see any suspicious connection like autorun.exe or autorun.inf or 
echo something suspicious. Once you find these suspected executable active connections,
echo note their PID.
echo -------------------------------------------
echo open Task manager and go to the Details tab. 
echo Under the details tab, you can see the name, PID, status and more information 
echo about the running applications. Sort PID, find the suspected PID here.
echo -------------------------------------------
echo Right click on that particular PID you see 2 important options:
echo End task and Open file location
echo Do not End task before opening the file location. Open location first, then end
echo that task. Delete the suspected malware in file location.
echo If you are unable to delete the malware, you can use Unlocker app.
echo It might also happen that the malware operates intermittently. 
echo In that case,repeat steps every 2-3 mins.
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
pause
goto monitorca
:doit
netstat -b -o 5
pause
goto monitorca
:mostrip
cls
echo ===========================================================================
echo Configuracion de TCP/IP
echo.
echo %date%
echo %time%
echo ===========================================================================
netsh interface ip show config
echo ===========================================================================
echo.
echo Presiona cualquier tecla para volver.
pause>nul
goto menuredes
:probcon
cls
echo ====================================================================
echo Connection Check Up
echo ====================================================================
echo.
echo [1] Manual (Ingresa las IP de tu servidor o nodos deseados)
echo [2] Automatico
echo [3] Volver
set /p op= Seleccionar :
if %op%==1 goto manualsetts
if %op%==2 goto autosett
if %op%==3 goto menuredes
IF NOT %op%==123  cls & goto probcon
:manualsetts
cls
SET /P IP= Ingrese IP : 
echo ====================================================================
goto ipng
:ipng
ping %IP%
echo ====================================================================
tracert %IP% 
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Trace Complete')"
echo ====================================================================
pause
goto probcon
:autosett
cls
ping google.com
echo ====================================================================
tracert google.com 
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Trace Complete')"

echo ====================================================================
pause
goto probcon
:rared
cls
echo  %date%
echo  %time%
echo //////////////////////////////////////////////
echo 		Reiniciar adaptadores 
echo.
echo /////////////////////////////////////////////
echo Es posible que sea necesario reiniciar el equipo, desea continuar?
echo [1] SI 
echo [2] NO
set /p op=Seleccionar:
if %op%==2 goto menuredes
if %op%==1 goto reinicialos
if not %op%==1,2 cls & goto rared
:reinicialos
cls
echo =======================================
echo		 Reiniciando...
echo =======================================
echo.
netsh int ip reset
echo.
echo ===========================================================================
echo.
@echo off
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Completado. La dirección IP ha sido reestablecida.')"
echo Completo
echo Presione cualquier tecla para volver.
pause>nul
goto menuredes
:printspoo
cls
echo ====================================
echo Reiniciar servicio de impresion PrintSpooler
echo %date%
echo %time%
echo ====================================
echo [1] Reiniciar 
echo [2] Probar Comunicacion
echo [e] VOLVER
set /p op= Seleccionar :
if %op%==1 goto reinps
if %op%==2 goto checkcomm
if %op%==e goto menuredes
IF NOT %op%==12e cls & goto printspoo
:reinps
cls
echo ====================================
net stop spooler
net start spooler
echo ====================================
echo.
echo Hecho.
echo.
echo.
pause
goto printspoo
:checkcomm
cls
echo.
echo ====================================
echo [1] Iniciar auditoria de IP y comunicacion con Impresora
echo [2] Volver
echo ====================================
set /p op=Seleccionar:
if %op%==1 goto :revisaimpresora
if %op%==2 goto printspoo
IF NOT %op%==12 cls & goto checkcomm
:revisaimpresora
cls
echo ==========================================================
ipconfig|FINDSTR "Dirección IPv4"
echo Esta es tu Direccion IP
echo ==========================================================
SET /P IP= Ingresa la IP de la impresora o PrintServer: 
echo ==========================================================
goto pngimp
:pngimp
echo ==========================================================
ping %IP% && echo LISTO
echo ==========================================================
pause
goto checkcomm
:renovip
cls
echo ==========================================================
echo Renovacion de concesiones IP DHCP
echo %date%
echo %time%
echo.
echo [1] Iniciar
echo [2] Volver
set /p op=Seleccionar:
if %op%==1 goto reneu	
if %op%==2 goto menuredes
if not %op%==12 cls & goto reneu
echo ==========================================================
:reneu
echo ==========================================================
echo IP Actualmente asignada
ipconfig|FINDSTR "Dirección IPv4"
echo ==========================================================
ipconfig /release
ipconfig /renew
echo =========================================================
echo IP Asignada
ipconfig|FINDSTR "Dirección IPv4"
echo =========================================================
echo.
echo Presiona cualquier tecla para volver.
pause>nul
goto menuredes
REM ///////////::::::::::::::::::::::::::::::::////////////////////
:menusegur
cls
echo.
echo =========================================================
echo 		MENU SEGURIDAD
echo =========================================================
echo.
echo.
echo 	A. GENERAR UN ATAQUE DoS 
echo.
echo 	B. ACTIVAR GODMODE
echo.
echo		C. CONTROLAR FIREWALL
echo.
echo 	D. CONSOLA DE ADMON DE EQUIPOS
echo.
echo 	E. CONSOLA MICROSOFT MMC
echo.
echo		F. INFORMACION DEL SISTEMA y HARDWARE
echo.
echo		G. NUMERO DE SERIE, SISTEMA Y PROCESADOR
echo. 
echo 	H. RECUPERAR CLAVE DE WINDOWS
echo.
echo		I. RESUMEN DXDIAG
echo.	
echo 	J. SERVICIOS
echo.
echo		K. TASK KILLER
echo.
echo		L. VERSION DE COMPILACION DE WINDOWS
echo.
echo		M. MONITOR DE CONEXIONES ENTRANTES Y ACTIVAS
echo.
echo		X. VOLVER
echo.
set /p op= 		Ingresa una seleccion : 
IF %op%==A goto ataquedos
IF %op%==a goto ataquedos
if %op%==B goto godmode
if %op%==b goto godmode
if %op%==C goto firew
if %op%==c goto firew
if %op%==D goto admoneq
if %op%==d goto admoneq
if %op%==E goto conmmc
if %op%==e goto conmmc
if %op%==F goto infoss
if %op%==f goto infoss
if %op%==G goto serialop
if %op%==g goto serialop
if %op%==H goto clavewins
if %op%==h goto clavewins
if %op%==I goto diexdiag
if %op%==i goto diexdiag
if %op%==J goto servicios
if %op%==j goto servicios
if %op%==K goto taskkll
if %op%==k goto taskkll
if %op%==L goto winvers
if %op%==l goto winvers
if %op%==M goto monitorca
if %op%==m goto monitorca
if %op%==X goto menuprincipal
if %op%==x goto menuprincipal
IF NOT "%op%"=="abcdefghijklmx" cls & goto menusegur
IF NOT "%op%"=="ABCDEFGHIJKLMX" cls & goto menusegur
REM ::::::::://////////////////////////:::::::::::::::::::
:ataquedos
cls
echo.
echo =========================================================
echo Perform a denial of service attack by sending continuous 
echo ping packets to the target IP address. A continuous ping 
echo will cause buffer overflow at the target system and 
echo will cause the target system to crash. 
echo This buffer flow often causes the system crash making the
echo system more vulnerable to attack.
echo Once the system becomes more vulnerable to attack, it allows
echo more attacks like the injection of a trojan horse on the target 
echo machine.
echo =========================================================
echo Note: This command might not work on some systems.
echo If you get response like reaquest timed out
echo that means their server is already down.
echo =========================================================
echo.
echo.
echo.
echo  [1] INICIAR
echo  [2] VOLVER
set /p op= Seleccionar una opcion :
if %op%==1 goto dosinitiate
if %op%==x goto menusegur
IF NOT "%op%"==12 cls & goto menusegur
:dosinitiate
SET /P IP= INGRESA EL IP OBJETIVO: 
echo =========================================================
echo Puedes detener la ejecucion en cualquier momento
echo presionando Ctrl+C y Enter. La ventana se cerrara.
echo =========================================================
pause
goto loop
:loop
ping %IP% -l 65500 -w 1 -n 1
goto loop
:godmode
cls
echo =========================================================
echo Crea una carpeta con opciones administrativas
echo =========================================================
echo  [1] CREAR
echo  [2] QUITAR
echo  [e] VOLVER
set /p op= Seleccionar una opcion :
if %op%==1 goto crea
if %op%==2 goto quita
if %op%==e goto menusegur
IF NOT "%op%"==12e cls & goto menusegur
:crea
cls
echo =========================================================
echo 		Creando Directorio...
echo =========================================================
CD /D %userprofile%\Desktop && echo Preparado
pause
MD GodMode.{ED7BA470-8E54-465E-825C-99712043E01C} && echo Completado. 
@echo off
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('El directorio fue creado en el escritorio.')"
cd /D D:
pause
goto godmode
:quita
cls
CD /D %userprofile%\Desktop && echo Preparado
pause
RD GodMode.{ED7BA470-8E54-465E-825C-99712043E01C} && echo Completado
CD /D D:
pause
goto godmode
:firew
cls
echo =========================================================
echo 		Control de Firewall
echo =========================================================
echo.
echo 	Activar         [1]
echo 	Desactivar 	[2]
echo	        Forzar          [FD]
echo	     desactivacion 	
echo		Volver 		[e]
set /P or= Escribir una orden : 
if %or%==1 goto actv
if %or%==2 goto dactv
if %or%==FD goto forss
if %or%==e goto menusegur
if not "%or%"==12FDe cls & echo Opcion Invalida & goto firew
:actv
cls
netsh firewall set opmode enable
echo DONE
pause
goto firew
:dactv
cls
netsh firewall set opmode disable
echo DONE
pause
goto firew
:forss
netsh advfirewall set allprofiles state off
echo DONE
pause
goto firew
:admoneq
cls
echo ABRIENDO...
START compmgmt.msc
cls
goto menusegur
:conmmc
cls
echo ABRIENDO...
START MMC
cls
goto menusegur
echo.
:infoss
cls
echo =========================================================
echo 		INFORMACION DE SISTEMA Y RECURSOS
echo =========================================================
echo.
echo 	[1] Vista general
echo 	[2] Informacion del CPU
echo 	[3] Informacion del Equipo
echo 	[4] Informacion del Disco Duro
echo 	[e] VOLVER
set /P or= Escribir una orden : 
if %or%==1 goto msinfs
if %or%==2 goto cpuinf
if %or%==3 goto eqinf
if %or%==4 goto hddinf
if %or%==e goto menusegur
if not "%or%"==1234e cls & echo Opcion Invalida & goto infoss
:msinfs
START msinfo32
goto infoss
:cpuinf
WMIC /Output:STDOUT CPU get /all /format:LIST
pause
goto infoss
:eqinf
WMIC /Output:STDOUT COMPUTERSYSTEM get /all /format:LIST
pause
goto infoss
:hddinf
WMIC /Output:STDOUT DISKDRIVE get /all /format:LIST
pause
goto infoss
ReM ________________________------------------------__________
:serialop
cls
echo =========================================================
echo Serial, OS and Processor Info
echo Hola %username%
echo %date% , %time%
echo =========================================================
echo 	Recopilando...
ping 127.0.0.1>nul
wmic bios get serialnumber
echo =========================================================
wmic os get Caption /value
wmic os get osarchitecture
echo =========================================================
echo Procesadores
wmic cpu get name
echo =========================================================
pause
goto menusegur
:clavewins
cls
echo =========================================================
echo Recuperando clave de activacion...
echo NOTA: Si la clave no aparece, tu sistema esta
echo crackeado o no ha sido activado.
echo Puedes ejecutar el script para forzar la recuperacion.
ping localhost>nul
echo =========================================================
wmic path softwarelicensingservice get OA3xOriginalProductKey
echo =========================================================
echo.
goto clavewins2
:clavewins2
echo A. FORZAR RECUPERACION
echo B. INFO COMPLETA DE LA LICENCIA
echo C. FECHA DE EXPIRACION DE LA LICENCIA 
echo E. VOLVER
set /p op= Selecciona una accion...
if %op%==A goto ejscrip
if %op%==B goto dlv
if %op%==C goto xpr
if %op%==E goto menusegur
if %op%==a goto ejscrip
if %op%==b goto dlv
if %op%==c goto xpr
if %op%==e goto menusegur
if not "%op%"==ABCE cls & goto clavewins2
if not "%op%"==abce cls & goto clavewins2
:ejscrip
@echo off
REM Cambiar al directorio donde se encuentra el script actual
cd /d "%~dp0"

REM Definir la ruta completa de la carpeta Resources dentro de AxelToolsV1
set ResourcesDir=%~dp0Resources

REM Validar si el directorio Resources existe
if exist "%ResourcesDir%" (
    echo Cambiando al directorio de Resources...
    cd /d "%ResourcesDir%"
    REM Ejecutar PD.vbs si existe
    if exist PD.vbs (
        echo Abriendo PD.vbs...
        start "" "wscript.exe" "PD.vbs"
    ) else (
        echo Error: PD.vbs no encontrado en %ResourcesDir%.
    )
) else (
    echo Error: El directorio Resources no existe: %ResourcesDir%.
)

REM Pausar para ver los mensajes
pause
cls
goto clavewins2
:dlv
@echo off
cmd /C slmgr/dli
pause
CD /D D: && echo Preparado
cls
goto clavewins2
:xpr
@echo off
slmgr -xpr
pause
CD /D D: && echo Preparado
cls
goto clavewins2
REM slmgr -xpr: REM Muestra la expiracion de la licencia actual del sistema o si esta activado permanentemente
:diexdiag
cls
echo Abriendo...
dxdiag
goto menusegur
:servicios
cls
echo Abriendo...
services.msc
goto menusegur
:taskkll
cls
echo =========================================================
echo 		TASK KILLER
echo =========================================================
echo.
echo 	[1] VER PROCESOS EN EJECUCION
echo 	[2] TERMINAR UN PROCESO
echo 	[e] VOLVER
echo.
set /P or=  Escribir una orden : 
if %or%==1 goto list
if %or%==2 goto kill1
if %or%==e goto menusegur
if not "%or%"==12e cls & goto taskkll
:list
cls
tasklist
echo =========================================================
goto kill1
:kill1
echo Escribe el nombre del proceso que quieras terminar 
echo con la terminacion que indique en la lista (.EXE, etc)
SET /P TTK= Escribir:
goto kill
:kill
echo =========================================================
taskkill /f /im %TTK% && echo PROCERSO TERMINADO. VOLVIENDO...
pause
goto taskkll
:winvers
winver
cls
goto menusegur

:menumtto
cls
echo.
echo =========================================================
echo 		MENU MANTENIMIENTO
echo =========================================================
echo.
echo.
echo 	A. Administrador de Discos
echo.
echo 	B. Administrador de Dispositivos
echo.
echo		C. CheckDisk y SystemFileChecker
echo.
echo 	D. CONFIGURACION BASICA MS
echo.
echo 	E. BORRAR COOKIES
echo.
echo		F. BORRAR ARCHIVOS TEMPORALES
echo.
echo		G. LIBERAR ESPACIO EN DISCO
echo. 
echo 	H. DESFRAGMENTADOR
echo.
echo		I. CCLEANER Y ADWCLEANER
echo.	
echo 	J. STATUS DEL DISCO DURO
echo.
echo		K. EVALUAR HARDWARE Y SOFTWARE LOGICO
echo.
echo		L. PUNTOS DE RESTAURACION
echo.
echo		M. REPORTE DE BATERIA (LAPTOP)
echo.
echo		N. RESPALDOS POR CMD
echo.
echo        O. SCRIPT DE LIMPIEZA GENERAL
echo.
echo		X. VOLVER
echo.
set /p op= 		Ingresa una seleccion : 
IF %op%==A goto admdsk
IF %op%==a goto admdsk
if %op%==B goto admdisp
if %op%==b goto admdisp
if %op%==C goto cdssfc
if %op%==c goto cdssfc
if %op%==D goto emesconfi
if %op%==d goto emesconfi
if %op%==E goto cookis
if %op%==e goto cookis
if %op%==F goto temps
if %op%==f goto temps
if %op%==G goto leed
if %op%==g goto leed
if %op%==H goto desfrag
if %op%==h goto desfrag
if %op%==I goto ccadw
if %op%==i goto ccadw
if %op%==J goto hddstatus
if %op%==j goto hddstatus
if %op%==K goto evare
if %op%==k goto evare
if %op%==L goto respoin
if %op%==l goto respoin
if %op%==M goto repbat
if %op%==m goto repbat
if %op%==N goto respaldos
if %op%==n goto respaldos
if %op%==O goto scriptlimp
if %op%==o goto scriptlimp
if %op%==X goto menuprincipal
if %op%==x goto menuprincipal
IF NOT "%op%"=="abcdefghijklmnox" cls & goto menumtto
IF NOT "%op%"=="ABCDEFGHIJKLMNOX" cls & goto menumtto
REM ::::::::://////////////////////////:::::::::::::::::::
:admdsk
START diskmgmt.msc
goto menumtto
:admdisp
START devmgmt.msc
goto menumtto
:cdssfc
cls
echo.
echo =========================================================
echo 			ESCANEAR EN BUSCA DE PROBLEMAS 
echo =========================================================
echo 	A. CHECKDISK
echo.
echo 	B. SYSTEM FILE CHECKER
echo.
echo 	C. VOLVER
echo.
set /p op=  Elegir :
if %op%==A goto checkd
if %op%==B goto sysfc
if %op%==C goto menumtto
if %op%==a goto checkd
if %op%==b goto sysfc
if %op%==c goto menumtto
IF NOT "%op%"=="abc" cls & goto cdssfc
IF NOT "%op%"=="ABC" cls & goto cdssfc
:checkd
cls
echo.
echo =========================================================
echo 			CHECKDISK
echo =========================================================
echo.
echo 	[1] ANALISIS
echo 	[2] REPARACION
echo 	[E] VOLVER
echo.
set /P or=  ELEGIR : 
if %or%==1 goto anal
if %or%==2 goto repairs
if %or%==e goto menumtto
if not "%or%"==12e cls & goto checkd
:anal
echo ingresa la unidad a analizar (C:, E:, D:): 
SET /P UAE= 
goto r1
:r1
CHKDSK %UAE% /scan
pause
goto checkd
:repairs
echo ingresa la unidad a reparar (C:, E:, D:): 
SET /P UAE= 
goto r2
:r2
CHKDSK %UAE% /f /r /b
pause
goto checkd
REM /////////////:.....::::::::::::::
:sysfc
cls
echo.
echo =========================================================
echo 			SYSTEM FILE CHECKER
echo =========================================================
echo.
echo =========================================================
echo If some files are missing or corrupted,
echo this command fixes them.
echo =========================================================
REM sfc /scannow
echo.
echo.
echo 	[1] VERIFICAR
echo 	[2] VERIFICAR Y REPARAR
echo 	[E] VOLVER
echo.
set /P or=  ELEGIR : 
if %or%==1 goto verifs
if %or%==2 goto veryrep
if %or%==e goto menumtto
if not "%or%"==12e cls & goto sysfc
:verifs
cls
SFC /VERIFYONLY
pause
goto sysfc
:veryrep
SFC /SCANNOW
pause
goto sysfc
:emesconfi
cls
msconfig
pause
goto menumtto
:cookis
cls
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Recommended to close the browsers. Click "Ok" and then press any key on the program to continue.')"
pause
echo =========================================================
echo Delete Internet Cookies
echo =========================================================
echo.
echo Deleting Cookies...
echo.
echo =========================================================
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
echo =========================================================
echo.
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Cookies deleted.')"
echo.
pause
goto menumtto
:temps
cls
echo.
echo =========================================================
echo Delete Temporary Internet Files
echo =========================================================
echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
echo.
pause
goto menumtto
:leed
cls
echo =========================================================
echo LIBERAR ESPACIO EN DISCO
echo =========================================================
echo.
echo.
echo 	[1] LIMPIEZA BASICA
echo 	[2] ABRIR EL LIBERADOR
echo 	[e] VOLVER
set /P or=  ELEGIR : 
if %or%==1 goto basics
if %or%==2 goto wzrd
if %or%==e goto menumtto
if not "%or%"==12e cls & goto leed
:basics
cls
echo =========================================================
echo Basic Disk Cleanup
echo =========================================================
echo.
echo Running Disk Cleanup...
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
ping localhost -n 3 >nul
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Cleanup Completed.')"
echo =========================================================
echo Terminado!
echo =========================================================
pause
goto leed
:wzrd
cls
echo.
echo ABRIENDO...
START cleanmgr.exe
goto leed
:desfrag
cls
echo =========================================================
echo 	DESFRAGMENTADOR DE DISCO
echo =========================================================
echo.
echo	        [1] Basico
echo 	[2] ABRIR QuickDefraggler
echo 	[e] volver
echo	Seleccionar : 
set /p op=
if %op%==1 goto basicus
if %op%==2 goto selplatforms
if %op%==e goto menumtto
if NOT %op%==12e goto desfrag
:selplatforms
echo 32 o 64 bits?
echo A. 32bits
echo B. 64bits
echo e. SALIR
set /p op= Selecciona A o B:
if %op%==A goto defragger32
if %op%==a goto defragger32
if %op%==B goto defragger64
if %op%==b goto defragger64
if %op%==e goto menumtto
if %op%==E goto menumtto
IF NOT %op%==ABe cls & goto selplatforms
IF NOT %op%==abe cls & goto selplatforms
echo =========================================================
:defragger32
@echo off
REM Cambiar al directorio donde se encuentra el script actual
cd /d "%~dp0"

REM Definir la ruta completa de la carpeta CCL dentro de AxelToolsV1
set DefragglerDir=%~dp0Resources\Defraggler

REM Validar si el directorio de CCL existe
if exist "%DefragglerDir%" (
    echo Cambiando al directorio de CCL...
    cd /d "%DefragglerDir%"
    REM Ejecutar CCleaner64.exe si existe
    if exist Defraggler.exe (
        echo Abriendo Defraggler 32 Bits...
        start "" "Defraggler.exe"
    ) else (
        echo Error: Defraggler no encontrado en %DefragglerDir%.
    )
) else (
    echo Error: El directorio de Defraggler no existe: %DefragglerDir%.
)

REM Pausar para ver los mensajes
pause
ping localhost>nul
goto desfrag
:defragger64
@echo off
REM Cambiar al directorio donde se encuentra el script actual
cd /d "%~dp0"

REM Definir la ruta completa de la carpeta CCL dentro de AxelToolsV1
set DefragglerDir=%~dp0Resources\Defraggler

REM Validar si el directorio de CCL existe
if exist "%DefragglerDir%" (
    echo Cambiando al directorio de CCL...
    cd /d "%DefragglerDir%"
    REM Ejecutar CCleaner64.exe si existe
    if exist Defraggler.exe (
        echo Abriendo Defraggler 64 Bits...
        start "" "Defraggler64.exe"
    ) else (
        echo Error: Defraggler no encontrado en %DefragglerDir%.
    )
) else (
    echo Error: El directorio de Defraggler no existe: %DefragglerDir%.
)

REM Pausar para ver los mensajes
pause
ping localhost>nul
goto desfrag
:basicus
cls
echo =========================================================
echo BASIC DISK DEFRAG
echo =========================================================
echo.
echo Desfragmentacion rapida de disco...
ping localhost -n 3 >nul
defrag -c -v
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Defrag Completed.')"
echo =========================================================
echo.
echo Terminado
echo.
echo =========================================================
pause
goto desfrag
:ccadw
cls
echo =========================================================
echo 	TOOLBOX
echo =========================================================
echo.
echo		[1] AdwCLEANER
echo 	[2] CCLeaner Portable
echo 	[3] CCLeaner Tech Install
echo 	[e] volver
echo	Seleccionar : 
set /p op=
if %op%==1 goto adwc
if %op%==2 goto ccleanerstart
if %op%==3 goto ccleanertech
if %op%==e goto menumtto
if %op%==E goto menumtto
if NOT %op%==12eE goto ccadw
:adwc
@echo off
REM Cambiar al directorio donde se encuentra el script actual
cd /d "%~dp0"

REM Definir la ruta completa de la carpeta Resources dentro de AxelToolsV1
set ResourcesDir=%~dp0Resources

REM Validar si el directorio de recursos existe
if exist "%ResourcesDir%" (
    echo Cambiando al directorio de recursos...
    cd /d "%ResourcesDir%"
    REM Ejecutar adwcleaner.exe si existe
    if exist adwcleaner.exe (
        echo Abriendo adwcleaner.exe...
        start "" "adwcleaner.exe"
    ) else (
        echo Error: adwcleaner.exe no encontrado en %ResourcesDir%.
    )
) else (
    echo Error: El directorio de recursos no existe: %ResourcesDir%.
)

REM Pausar para ver los mensajes
pause
goto ccadw
:ccleanerstart
@echo off
REM Cambiar al directorio donde se encuentra el script actual
cd /d "%~dp0"

REM Definir la ruta completa de la carpeta CCL dentro de AxelToolsV1
set CCLDir=%~dp0Resources\CCL

REM Validar si el directorio de CCL existe
if exist "%CCLDir%" (
    echo Cambiando al directorio de CCL...
    cd /d "%CCLDir%"
    REM Ejecutar CCleaner64.exe si existe
    if exist CCleaner64.exe (
        echo Abriendo CCleaner...
        start "" "CCleaner64.exe"
    ) else (
        echo Error: CCleaner64.exe no encontrado en %CCLDir%.
    )
) else (
    echo Error: El directorio de CCL no existe: %CCLDir%.
)
REM Pausar para ver los mensajes
pause
goto ccadw
:ccleanertech
@echo off
REM Cambiar al directorio donde se encuentra el script actual
cd /d "%~dp0"

REM Definir la ruta completa de la carpeta CCL dentro de AxelToolsV1
set ResourcesDir=%~dp0Resources

REM Validar si el directorio de CCL existe
if exist "%ResourcesDir%" (
    echo Cambiando al directorio de recursos. Por favor sigue los pasos para la instalacion...
    cd /d "%ResourcesDir%"
    REM Ejecutar adwcleaner.exe si existe
    if exist CCleaner.v6.17.10746.exe (
        echo Abriendo CCleaner Tech...
        start "" "CCleaner.v6.17.10746.exe"
    ) else (
        echo Error: CCleaner.v6.17.10746.exe no encontrado en %ResourcesDir%.
    )
) else (
    echo Error: El directorio de recursos no existe: %ResourcesDir%.
)

REM Pausar para ver los mensajes
pause
goto ccadw
:hddstatus
cls
echo =========================================================
echo 	STATUS DEL DISCO DURO
echo =========================================================
echo Si la respuesta arrojada no es OK
echo dirigete a CHECKDISK para corregir los problemas.
echo =========================================================
pause
WMIC diskdrive get status
echo =========================================================
goto menufins
:menufins
echo Ir a CHECKDISK?
echo.
echo A. Ir
echo B. Volver
set /p op=
if %op%==A goto checkd
if %op%==a goto checkd
if %op%==B goto menumtto
if %op%==b goto menumtto
if NOT %op%==AB goto menufins
if NOT %op%==ab goto menufins
:evare
cls
echo =========================================================
echo 		EVALUACION DE COMPONENTES 
echo =========================================================
echo Ejecuta una evaluacion de los componentes de 
echo hardware y software logico para determinar
echo su desempeno.
echo =========================================================
echo.
echo A. Ejecutar todas las comprobaciones
echo B. Rendimiento del Disco Duro Principal
echo C. Rendimiento de la Memoria
echo D. Rendimiento de la Memoria de Video
echo E. Rendimiento del CPU
echo F. Rendimiento de Graficos (Juegos y Multimedia)
echo G. Listar caracteristicas basicas del equipo
echo X. Volver
echo =========================================================
set /p op=
if %op%==A goto formal
if %op%==a goto formal
if %op%==B goto diskss
if %op%==b goto diskss
if %op%==C goto memo
if %op%==c goto memo
if %op%==D goto memovid
if %op%==d goto memovid
if %op%==E goto cpuz
if %op%==e goto cpuz
if %op%==F goto graphs
if %op%==f goto graphs
if %op%==G goto listar
if %op%==g goto listar
if %op%==X goto menumtto
if %op%==x goto menumtto
if NOT %op%==ABCDEFGX goto evare
if NOT %op%==abcdefgx goto evare
:formal
cls
echo =========================================================
echo Ejecutar todas las comprobaciones
echo =========================================================
WINSAT FORMAL
pause
goto evare
:diskss
cls
echo =========================================================
echo Evalua el rendimiento del disco duro principal.
echo Muestra la velocidad de lectura secuencial y aleatoria,
echo la de escritura secuencial, todas en MB/s, latencia y 
echo otras características.
echo Muestra al lado de cada prueba la puntuación obtenida.
echo =========================================================
WINSAT DISK
pause
goto evare
:memo
cls
echo =========================================================
echo Evalua el rendimiento de la memoria del sistema 
echo y muestra su capacidad en MB/s.
echo =========================================================
WINSAT MEM
pause
goto evare
:memovid
cls
echo =========================================================
echo Muestra el rendimiento de la memoria de video.
echo =========================================================
WINSAT DWM
pause
goto evare
:cpuz
cls
echo =========================================================
echo Ejecuta la prueba y comprobación de la capacidad
echo del CPU y muestra el resultado de diversos 
echo parámetros técnicos.
echo =========================================================
WINSAT CPUFORMAL
pause
goto evare
:graphs
cls
echo =========================================================
echo Evalúa la capacidad de los gráficos para juegos 
echo y para la reproducción de multimedia.
echo Muestra el rendimiento de Direct3D Batch, 
echo Alpha Blend, ALU, Texture Load y el 
echo Tiempo de descodificación de vídeo de Media Foundation.
echo =========================================================
WINSAT GRAPHICSFORMAL
pause
goto evare
:listar
cls
echo =========================================================
echo CARACTERISTICAS DEL EQUIPO
echo =========================================================
WINSAT FEATURES
pause
goto evare
:respoin
cls
echo 	Hola %username%
echo	 %date% , %time%
wmic os get Caption /value
wmic os get osarchitecture
echo =========================================================
echo 	Puntos de Restauracion del Sistema
echo =========================================================
echo.
echo.
echo 	[1] Crear un punto de Restauracion
echo.
echo 	[2] Restaurar el equipo a un punto anterior (creado)
echo.
echo 	[3] Forzar activar restauracion de sistema
echo.
echo 	[4] Ir a Propiedades del Sistema Avanzadas
echo.
echo 	[5] Ir al programador de Tareas
echo.
echo 	[e] Volver
echo.
set /p op= Selecciona : 
if %op%==1 goto createpoint
if %op%==2 goto getrestore
if %op%==3 goto forcerest
if %op%==4 goto propavsis
if %op%==5 goto progrtar
if %op%==e goto menumtto
if not "%op%"==12345e cls & goto respoin
:createpoint
cls
echo =========================================================
echo	Ingresa la letra de la unidad a crear el punto, 
echo 	sin puntos o slash
echo =========================================================
SET /P UNIDAD= 
echo	Ingresa un nombre para el punto de Restauracion
SET /P NPR= 
goto createresp
:createresp
CD /D %UNIDAD%:
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "%NPR%", 100, 7
echo =========================================================
echo Realizado. Abriendo ventana de propiedades para confirmar...
ping 127.0.0.1>nul
control /name Microsoft.Recovery
pause
cls
goto respoin
:getrestore
cls
echo Iniciando Asistente...
ping 127.0.0.1>nul
rstrui.exe
pause
cls
goto respoin
:forcerest
cls 
echo Este comando es a traves de PowerShell
echo Enable-ComputerRestore -drive "c:\"
pause
cls
goto respoin
:propavsis
cls
SystemPropertiesProtection
pause
cls
goto respoin
:progrtar
cls
taskschd.msc
pause
cls
goto respoin
:repbat
cls
echo =========================================================
echo Revisa el estado de bateria de tu laptop 
echo Este paso toma 60 segundos para monitorear el
echo sistema y genera un reporte de eficiencia que se 
echo guarda en C:\WINDOWS\system32\energy-report.html
echo =========================================================
echo 	1. Iniciar revision de eficiencia
echo 	2. Generar un reporte de uso y duracion
echo 	e. VOLVER
set /p op= Selecciona : 
if %op%==1 goto proces
if %op%==2 goto reportes
if %op%==e goto menumtto
if not "%op%"==12e cls & goto repbat
:proces
cls
echo =========================================================
echo Presiona una tecla para iniciar el proceso.
echo Para cancelar presiona Ctrl+C y luego N, seguido de
echo la tecla ENTER.
echo =========================================================
pause
powercfg/energy 
@echo off
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Tarea Completada.')"
pause
echo ABRIENDO ARCHIVO...
CD /D %windir%\System32
START energy-report.html
pause
goto repbat
:reportes
cls
echo =========================================================
echo Presiona una tecla para iniciar el proceso.
echo =========================================================
pause
powercfg/batteryreport
@echo off
powershell -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework; [System.Windows.MessageBox]::Show('Tarea Completada. El archivo se abrirá.')"
pause
echo ABRIENDO ARCHIVO...
CD /D %windir%\System32
START battery-report.html
pause
goto repbat
:respaldos
cls
echo =========================================================
	echo Respaldos por CMD
	echo Hola %username%
	echo %date% , %time%
echo =========================================================
echo 	Un respaldo por comandos automatizados es muy inestable
echo	      EL proceso se realiza a mano por lineas en CMD
echo =========================================================
pause
echo =========================================================
echo.
echo Dentro de CMD ejecuta el comando DISKPART, 
echo seguido de LIST VOLUME para ver un listado de las 
echo unidades conectadas al equipo y sus letras.
echo	Teclea Ctrl+C para volver al CMD
echo.
echo =========================================================
echo.
echo Escribe DIR para ver los directorios que 
echo hay en cada unidad:
echo "DIR C:\Users\Carpeta\Carpeta      o      DIR E:\User"
echo Puedes buscar los directorios como:
echo "CD /D %userprofile%" "C /D C:\Users\%username% %"
echo "CD /D E: C: XUNIDAD:\%username% "
echo Ubica los directorios que contienen la informacion a respaldar
echo.
echo =========================================================
echo.
echo Para ver el contenido de una carpeta, cambiate a esa
echo ubicacion con el comando CD o CHDIR. 
echo Si no te permite cambiar usa /D para forzar
echo	"CD UNIDAD:\Users\Usuario\Desktop" - "CD /D UNIDAD:\"
echo	Una vez dentro teclea DIR para ver su contenido
echo 	Teclea CD.. para subir un nivel de carpeta
echo.
echo =========================================================
echo.
echo	Utiliza XCOPY para copiar.
echo	"XCOPY NOMBREDEARCHIVO.EXT UNIDADaCOPIAR:\SUBCARPETA /E"
echo 	"XCOPY RUTADEARCHIVO UNIDADaCOPIAR:\SUBCARPETA /E"
echo 	"XCOPY RUTADECARPETA UNIDADaCOPIAR:\SUBCARPETA /E"
echo.
echo =========================================================
echo.
echo Debes iniciar el CMD como Administrador
echo =========================================================
pause
goto menumtto
:scriptlimp
COLOR 07
@echo off
:: Script para limpieza periódica de una laptop de testing
:: Creado por Axel Van Dyck
echo ================================
echo   INICIANDO LIMPIEZA
echo ================================

:: Eliminar archivos temporales del usuario
echo Eliminando archivos temporales del usuario...
del /q /s "%TEMP%\*" >nul 2>&1
rd /s /q "%TEMP%" >nul 2>&1
mkdir "%TEMP%"
del /q/f/s %TEMP%\*
del /q/f/s C:\Windows\Temp\*
echo Archivos temporales eliminados.

echo Flushing DNS Cache
ipconfig /flushdns

:: Limpiar la papelera de reciclaje
echo Limpiando papelera de reciclaje...
rd /s /q "%systemdrive%\$Recycle.Bin" >nul 2>&1
echo Papelera vaciada.

:: Limpiar archivos temporales de Windows
echo Eliminando archivos temporales de Windows...
del /q /s "%systemroot%\Temp\*" >nul 2>&1
rd /s /q "%systemroot%\Temp" >nul 2>&1
mkdir "%systemroot%\Temp"
del /q/f/s C:\Windows\Prefetch\*
echo Archivos temporales de Windows eliminados.

:: Eliminar logs de eventos innecesarios
echo Limpiando logs de eventos...
for /f "tokens=*" %%G in ('wevtutil el') do (
    wevtutil cl "%%G" >nul 2>&1
)
echo Logs de eventos limpiados.

:: Limpiar cookies y caché de Google Chrome
echo Limpiando cookies y caché de Google Chrome...
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" >nul 2>&1
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies" >nul 2>&1
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Code Cache" >nul 2>&1
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 1\Cache" >nul 2>&1
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 1\Cookies" >nul 2>&1
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 1\Code Cache" >nul 2>&1
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 2\Cache" >nul 2>&1
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 2\Cookies" >nul 2>&1
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 2\Code Cache" >nul 2>&1

echo Cookies y caché de Google Chrome eliminados.

echo ================================
echo   LIMPIEZA COMPLETA
echo ================================
pause
goto menumtto
:storewars
COLOR 07
cls
echo Trabajando...
echo Puede demorar algunos segundos......
pkgmgr /iu:"TelnetClient"
Telnet Towel.blinkenlights.nl
goto menuprincipal
:exitss
cls
COLOR 80
echo.    
echo                            ╔══════════════════════════════════════════╗
echo                            ║           • IT TOOLS MANAGER •           ║
echo                            ╠══════════════════════════════════════════╣
echo                            ║               %date%             ║
echo                            ║                                          ║
echo                            ║               %time%                ║
echo                            ║                                          ║
echo                            ║         Compilado por Axel Van Dyck      ║
echo                            ║                                          ║
echo                            ║       https://github.com/avandyck16      ║
echo                            ║                                          ║
echo                            ║      Deteniendo servicio, cerrando.      ║
echo                            ║                                          ║
echo                            ╚══════════════════════════════════════════╝
echo.
echo			                              ) )
echo			                               ( (
echo			                              ) )
echo			                            ...........
echo			                            ^|         ^|═╗
echo			                            ^|         ^| ║
echo			                            ^|         ^|═╝
echo			                            \         /
echo			                             \       /
echo			                              `.....'
echo			                              Coffee'
echo			                         Gracias por utilizar
echo			                          IT Tools Manager
ping -n 4 127.0.0.1 > NUL
echo.
ping 127.0.0.1 >nul
echo B E S A M E -  E L  -  T R A S E R O !!!!!!!!!!!!!!!
exit




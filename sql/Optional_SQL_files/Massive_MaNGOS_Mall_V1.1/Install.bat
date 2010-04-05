:TOP
@CLS
@ECHO OFF
ECHO.
COLOR A
ECHO Please enter your MySQL Info
ECHO.
set /p host= MySQL Server Address: 
set /p user= MySQL Username: 
set /p pass= MySQL Password: 
SET /p world_db= World Database: 

SET port=3306
SET mysqlpath=.\mySQL\
SET devsql=.\development\
SET extras=.\extras\

:Begin
CLS
ECHO.
ECHO  _ __ ___  _ __ ___  _ __ ___  
ECHO ^| '_ ` _ \^| '_ ` _ \^| '_ ` _ \ 
ECHO ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^|
ECHO ^|_^| ^|_^| ^|_^|_^| ^|_^| ^|_^|_^| ^|_^| ^|_^|
ECHO.
ECHO Massive MaNGOS Mall - Version 1.1
ECHO.
ECHO 	I - Import Vendor Data
ECHO 	S - Spawn Vendors
ECHO 	R - Remove Vendors
ECHO 	E - Remove Everything
ECHO 	X - Exit
ECHO.
SET /p v= 		Enter a letter: 
IF %v%==* GOTO error
IF %v%==i GOTO import
IF %v%==I GOTO import
IF %v%==s GOTO spawn
IF %v%==S GOTO spawn
IF %v%==r GOTO remove
IF %v%==R GOTO remove
IF %v%==e GOTO removeall
IF %v%==E GOTO removeall
IF %v%==x GOTO exit
IF %v%==X GOTO exit
set v=
GOTO error

:import
CLS
Echo.
echo Importing..
echo.
for %%C in (%devsql%\*.sql) do (
   ECHO import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
)
ECHO Done.
ECHO.
ECHO Press any key to exit.
PAUSE >NUL
GOTO begin

:spawn
@ECHO OFF
CLS
echo.
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < %extras%\spawn.sql
echo.
echo Successfully spawned all vendors.
ECHO.
ECHO Press any key to exit.
PAUSE >NUL
GOTO begin

:remove
@ECHO OFF
CLS
echo.
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < %extras%\remove.sql
echo.
echo Successfully despawned all vendors.
ECHO.
ECHO Press any key to exit.
PAUSE >NUL
GOTO begin

:removeall
@ECHO OFF
CLS
echo.
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < %extras%\removeall.sql
echo.
echo Successfully removed everything.
ECHO.
ECHO Press any key to exit.
PAUSE >NUL
GOTO begin

:error
ECHO 	Please enter a correct letter.
ECHO.
PAUSE
GOTO begin


:exit
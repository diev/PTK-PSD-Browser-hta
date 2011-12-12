@ECHO OFF
IF "%1"=="" EXIT 1

SET unpacker=%~dp0\7z.exe
SET mtmp=%TEMP%\$mtmp$
IF EXIST %mtmp% (DEL /Q /F %mtmp%\*.*) ELSE (MD %mtmp%)
PUSHD %mtmp%
CALL :list %1
POPD
DEL /Q /F %mtmp%\*.*
EXIT

:list
FOR /F "tokens=1,2 skip=5" %%A IN ('%unpacker% e -y %1') DO (
	if "%%A"=="Extracting" (
		ECHO %%B
		CALL :list %%B
	)
)

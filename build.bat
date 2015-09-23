@ECHO OFF

REM Path to .net compiler executable
SET COMPILER="C:\Windows\Microsoft.NET\Framework\v3.5\csc"

REM Path to the batch/source files
SET SRC_DIR=%CD%

REM Path to CM3D2
SET GAME_DIR="D:\KISS\CM3D2"

REM Path to ReiPatcher
SET RP_DIR="D:\KISS\_workdir\ReiPatcher"

REM Compile patch
CD /D %RP_DIR%\Patches
%COMPILER% /t:library /lib:%RP_DIR% /r:ReiPatcher.exe /r:mono.cecil.dll /r:mono.cecil.rocks.dll %SRC_DIR%\CM3D2.ArchiveReplacer.Patcher.cs

REM Create the _Data dir, otherwise the game won't start
IF NOT EXIST %GAME_DIR%\_Data (
    ECHO creating _Data directory
    MKDIR %GAME_DIR%\_Data
    ECHO
)

REM Compile hook
CD /D %GAME_DIR%\CM3D2x64_Data\Managed
%COMPILER% /t:library /lib:. /r:Assembly-CSharp-firstpass.dll /r:UnityEngine.dll %SRC_DIR%\CM3D2.ArchiveReplacer.Hook.cs
pause;
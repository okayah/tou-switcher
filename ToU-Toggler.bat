@echo off
setlocal

:: Credits: This script was created with the assistance of DeepSeek-V3, an AI developed by DeepSeek.

:: Define directories
set "GAME_DIR=%~dp0"
set "MODS_DIR=%GAME_DIR%mods"

:: Create mods directory if it doesn't exist
if not exist "%MODS_DIR%" mkdir "%MODS_DIR%"

:: Files and folders to move
set "FOLDERS=BepInEx dotnet"
set "FILES=doorstop_config.ini steam_appid.txt winhttp.dll"

:: Check if files/folders are in the game directory
set "MOVE_TO_MODS=0"
for %%F in (%FOLDERS% %FILES%) do (
    if exist "%GAME_DIR%\%%F" set "MOVE_TO_MODS=1"
)

:: Move items
if "%MOVE_TO_MODS%"=="1" (
    echo Moving files/folders to mods directory...
    set "SOURCE_DIR=%GAME_DIR%"
    set "DEST_DIR=%MODS_DIR%"
) else (
    echo Moving files/folders back to game directory...
    set "SOURCE_DIR=%MODS_DIR%"
    set "DEST_DIR=%GAME_DIR%"
)

for %%F in (%FOLDERS% %FILES%) do (
    if exist "%SOURCE_DIR%\%%F" (
        echo Moving: %%F
        move /Y "%SOURCE_DIR%\%%F" "%DEST_DIR%"
    )
)

echo Done.
pause
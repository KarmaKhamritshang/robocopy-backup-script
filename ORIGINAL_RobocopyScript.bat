:: Start Header 1

:: Titel: Karma123Robocopy - Batch Skript mit Robocopy
:: Author: Karma Khamritshang

:: End Header 1

:: Start Header 2
@echo off

:: Zeitstempel
set "Timestamp=%date:~6,4%-%date:~3,2%-%date:~0,2%"

:: Setze Quelldatenträger/-verzeichnis
set "Source=C:\Users\karmabackup\_Testdaten"

:: Speicherort 1: Lokal
set "DestLocal=C:\M143-Lokaler_Backup"
robocopy "%Source%" "%DestLocal%" /mir /copy:DATS /log+:C:\M143-Logs\00_Logs_Lokal\%Timestamp%_Lokaler_Backup_Log.txt
echo Lokales Backup abgeschlossen.

:: Speicherort 2: SSD
set "DestSSD=E:\M143-SSD_Backup"
robocopy "%Source%" "%DestSSD%" /mir /copy:DATS /log+:C:\M143-Logs\01_Logs_SSD\%Timestamp%_SSD_Backup_Log.txt
echo SSD Backup abgeschlossen.

:: Speicherort 3: OneDrive
set "DestOneDrive=C:\Users\karmabackup\OneDrive\M143-OneDrive_Backup"
robocopy "%Source%" "%DestOneDrive%" /mir /copy:DATS /log+:C:\M143-Logs\02_Logs_OneDrive\%Timestamp%_OneDrive_Backup_Log.txt
echo OneDrive Backup abgeschlossen.

:: End Header 2
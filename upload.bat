@echo off
set LOGFILE=upload_log.txt
echo Starting upload process... > %LOGFILE%
echo Checking for Git... >> %LOGFILE%

set GIT_CMD=git

REM Check common installation paths
if exist "C:\Program Files\Git\cmd\git.exe" set GIT_CMD="C:\Program Files\Git\cmd\git.exe"
if exist "C:\Program Files\Git\bin\git.exe" set GIT_CMD="C:\Program Files\Git\bin\git.exe"
if exist "C:\Users\%USERNAME%\AppData\Local\Programs\Git\cmd\git.exe" set GIT_CMD="C:\Users\%USERNAME%\AppData\Local\Programs\Git\cmd\git.exe"
REM Check Desktop just in case
if exist "%USERPROFILE%\Desktop\git.exe" set GIT_CMD="%USERPROFILE%\Desktop\git.exe"

echo Using Git at: %GIT_CMD% >> %LOGFILE%

REM Test if git works
%GIT_CMD% --version >> %LOGFILE% 2>&1
if %errorlevel% neq 0 (
    echo Error: Git is not found. >> %LOGFILE%
    echo Error: Git is not found.
    echo We tried looking in standard locations and could not find it.
    echo Please tell the AI assistant what you see in the "upload_log.txt" file.
    pause
    exit /b
)

echo Initializing Git... >> %LOGFILE%
%GIT_CMD% init >> %LOGFILE% 2>&1

echo Configuring User... >> %LOGFILE%
%GIT_CMD% config --global user.name "Krystal555614" >> %LOGFILE% 2>&1
%GIT_CMD% config --global user.email "iampolice323@gmail.com" >> %LOGFILE% 2>&1

echo Adding files... >> %LOGFILE%
%GIT_CMD% add . >> %LOGFILE% 2>&1

echo Committing... >> %LOGFILE%
%GIT_CMD% commit -m "Initial commit" >> %LOGFILE% 2>&1

echo Renaming branch to main... >> %LOGFILE%
%GIT_CMD% branch -M main >> %LOGFILE% 2>&1

echo Adding remote origin... >> %LOGFILE%
%GIT_CMD% remote remove origin >> %LOGFILE% 2>&1
%GIT_CMD% remote add origin https://github.com/Krystal555614/my-portfolio >> %LOGFILE% 2>&1

echo Pushing to GitHub... >> %LOGFILE%
echo (This might ask for your password in a popup window)
%GIT_CMD% push -u origin main >> %LOGFILE% 2>&1

echo Done! >> %LOGFILE%
echo ==========================================
echo Execution finished. Please check upload_log.txt for details.
echo ==========================================
type %LOGFILE%
pause

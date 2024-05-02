
MKDIR C:\YT-Installer
MKDIR C:\YT-Installer\YT-Vids

REM Check Python

python --version >nul 2>&1

xcopy "%~dp0.." "C:\YT-Installer" /s /e /i /y
mklink "C:\Users\%USERNAME%\OneDrive\Desktop\VDownloader.exe" "C:\YT-Installer\dist\main\main.exe"
mklink "C:\Users\%USERNAME%\Desktop\VDownloader.exe" "C:\YT-Installer\dist\main\main.exe"


if %errorlevel% neq 0 (
    echo Python doesn't on the System. Installation of Python started...


    if %errorlevel% neq 0 (
        echo Error: Python needs administration rights.
    )
)


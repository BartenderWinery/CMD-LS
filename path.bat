@echo off && echo I'm still not familar with windows PATH, this script attempts to add itself to path automatically. && echo:
    echo Adding ls.bat to PATH...
    setx path "%ls%;%~dp0ls.bat"
    set send=1
    timeout /t 5
    exit
    
@echo off
call :lshelp
:input
    ver > nul
    set /p input=">>: "
    if %input%==add:: (
        start cmd /k path.bat && timeout /t 1 /nobreak > nul && if send neq 1 ( echo: && echo Success! )
    ) else if %input%==cls:: (
        call cls && goto input
    ) else if %input%==help:: (
        call :lshelp && goto input
    ) else (
        call :default
    )
    goto input
:default
    echo Searching...
    echo:
    call sys\nav.bat %input%
    goto input
:lshelp
    echo [Add ls.bat to PATH]   ^>^>  [add::]
    echo   [Clear the screen]   ^>^>  [cls::]
    echo [Display help: help]   ^>^>  [help::]
@ECHO OFF
SETLOCAL

rem memo in D:\dl\Dropbox\mat-dir\snippets-mat\bat file base name uicrun.txt

REM IF ()==(%1) GOTO USAGE
if [%1]==[] goto usage
REM FOR %%i IN ("%file%") DO (
    FOR %%i IN ("%1%") DO (
        set filename=%%~ni
)
echo filename: %filename%

REM ~ echo pyuic4 "%filename%".ui -o "%filename%"_ui.py
echo pyuic5 "%filename%".ui -o "%filename%"_ui.py
pyuic5 "%filename%".ui -o "%filename%"_ui.py

REM echo filename0=%%~n1

GOTO EOF
:USAGE
    ECHO. Same as pyuic5 file.ui -o file_ui.py
    ECHO. Syntax: %0 FileSpec.ext
    REM ECHO. pyuic4 FileSpec.ui -o FileSpec.py
    ECHO. uic2py FileSpec.ui -o FileSpec.py
:EOF {End-of-file}
pause
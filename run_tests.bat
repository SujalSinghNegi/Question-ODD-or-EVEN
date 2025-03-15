@echo off
setlocal enabledelayedexpansion

REM Compile the project automatically.
g++ main.cpp user_code.cpp -o solution.exe

REM For each input file (.in) in the current directory,
REM run the solution with corresponding expected (.out) and actual output (.actual) files.
for %%f in (*.in) do (
    set "filename=%%~nf"
    echo Running test case: %%f
    solution.exe %%f !filename!.out !filename!.actual
)

pause

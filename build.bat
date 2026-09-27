@echo off
REM Build script for Typing Speed Tester
REM Assumes MASM and Irvine32 are properly configured

echo Building Typing Speed Tester...

REM Assemble the source file
ml /c /Fl /coff TypingSpeedTester.asm
if errorlevel 1 (
    echo Assembly failed!
    pause
    exit /b 1
)

REM Link the object file with Irvine32
link /SUBSYSTEM:CONSOLE TypingSpeedTester.obj Irvine32.lib kernel32.lib
if errorlevel 1 (
    echo Linking failed!
    pause
    exit /b 1
)

echo Build successful!
echo Run TypingSpeedTester.exe to start the program.
pause



@echo off

echo Configurating
cmake -H. -B junk/CMakeLearn_release -G "Visual Studio 17 2022"
if %ERRORLEVEL% GEQ 1 EXIT /B 1

echo Build Release
cmake --build build/CMakeLearn_release --config Release
if %ERRORLEVEL% GEQ 1 EXIT /B 1
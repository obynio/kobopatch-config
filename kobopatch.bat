@echo off
cd /D "%~dp0"
erase "out/KoboRoot.tgz" >nul 2>&1
erase "out/log.txt" >nul 2>&1
"./bin/koboptch-windows.exe"
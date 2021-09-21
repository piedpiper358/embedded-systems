
@echo off
:loop 
m3p %1 openchannel %2 ; lfile load.m3p 

if %errorlevel% neq 0 goto loop

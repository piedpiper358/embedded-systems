
@echo off


:loop 
	
	m3p %2 %1 ; lfile load.m3p 
  
if %errorlevel% neq 0 goto loop

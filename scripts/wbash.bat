:: Run a Bash command while in Windows
:: Calls this from Git for Windows:
::	$ bash.exe -c
:: Your command will run where you are, letting you do stuff like less and vim without fully opening a Bash shell
:: It behaves like WSL's
::	$ wsl <command>
::
:: To use pipes, you need to invoke <this script> after the pipe
:: Alternatively, make a version of this script without the quotes around
::  %*, and give your command with quotes; that'll properly pass the
::  pipe to bash.exe
::  I'm not sure why I can't get it to work any other way
:: Example:
::  $ <this script> ls -a
:: You do not need to put quotes around your arguments
@echo off
"C:\Program Files\Git\bin\bash.exe" -c "%*"
@echo on

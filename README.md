# VScompiler-on-macOS-Linux
This script aims to automatically install the windows C compiler on GNU/Linux and macOS and be able to execute .exe file

Once you have install everthing you can use `x86_64-w64-mingw32-gcc <file_name.c>` to compile your .c file and then using wine you can execute the .exe file on macOS or GNU/Linux. 

Before you execute the script, be aware that this script work using the apt package manager for Linux and the Hombrew package manager for macOS.

THIS WILL ALSO WORK ON APPLE SILICON. 
If you are on apple silicon or on macOS Catalina 10.15 or higher you need to do `wine64 <file_name.exe>` instead of `wine <file_name.exe>`

@echo off

 echo "============================================="
 echo "                        _ _  __ _            "
 echo "                       | (_)/ _(_)           "
 echo " __      _____  _ __ __| |_| |_ _  ___ _ __  "
 echo " \ \ /\ / / _ \| '__/ _` | |  _| |/ _ \ '__| "
 echo "  \ V  V / (_) | | | (_| | | | | |  __/ |    "
 echo "   \_/\_/ \___/|_|  \__,_|_|_| |_|\___|_|    "
 echo "											    "
 echo "============================================="
 echo                by Amit Barman
 echo "============================================="
 
:Choise
echo (1) Install requirements.
echo (2) run wordifier.
echo (3) stop wordifier.

set/p opt="Enter option : "

if %opt% == 1 goto Install
if %opt% == 2 goto Start
if %opt% == 3 goto Stop
echo Invalid option.
goto Choise

:Install
pip install -r requirements.txt
pause
goto End

:Start
pythonw wordifier.py
goto End

:Stop
taskkill /IM "pythonw.exe" /F
goto End

:End
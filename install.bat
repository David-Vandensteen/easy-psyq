@echo off
cls
set PSYQ_HTTP=http://azertyvortex.free.fr/downloads/PSYQ_SDK.zip

echo unpack curl...
bin\7z1900\7z.exe x bin\curl-7.70.0-win32-mingw.zip -o%temp%\curl

echo download Psy-Q...
%temp%\curl\curl-7.70.0-win32-mingw\bin\curl.exe %PSYQ_HTTP% --output %temp%\PSYQ_SDK.zip

echo unpack Psy-Q...
bin\7z1900\7z.exe x bin\psyq\PSYQ_SDK.zip -oc:\temp\Psyq
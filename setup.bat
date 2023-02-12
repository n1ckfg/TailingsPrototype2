@echo off

set BASE_URL="https://fox-gieg.com/patches/github/n1ckfg/TailingsPrototype2/Assets"

cd %~dp0
powershell -Command "Invoke-WebRequest %BASE_URL%/Plugins1.zip -OutFile Assets\Plugins1.zip"
cd Assets
powershell Expand-Archive Plugins1.zip -DestinationPath Plugins
del Plugins1.zip

@pause


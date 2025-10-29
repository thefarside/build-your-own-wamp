@echo off
pushd "..\vendor\composer"
path|find /i "%cd%" >nul || set path=%path%;%cd%
set COMPOSER_INSTALL_DIR=%cd%
set COMPOSER_HOME=%cd%\home
set COMPOSER_TEMP=%cd%\temp
set COMPOSER_CACHE_DIR=%COMPOSER_HOME%\cache
popd
pushd "..\vendor\composer\bin\Git\cmd"
path|find /i "%cd%" >nul || set path=%path%;%cd%
popd
pushd "..\vendor\composer\bin\7-Zip"
path|find /i "%cd%" >nul || set path=%path%;%cd%
popd
"..\binaries\php\php.exe" -d sys_temp_dir="%COMPOSER_TEMP%" "%COMPOSER_INSTALL_DIR%\composer.phar" %*
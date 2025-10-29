@echo off
pushd "..\vendor\wp-cli"
set WP_CLI_INSTALL_DIR=%cd%
set WP_CLI_CONFIG_PATH=%cd%\config\config.yml
set WP_CLI_CACHE_DIR=%cd%\cache
set WP_CLI_TEMP=%cd%\temp
set WP_CLI_PACKAGES_DIR=%cd%\packages
popd
pushd "..\binaries\mariadb\bin"
path|find /i "%cd%" >nul || set path=%path%;%cd%
popd
"..\binaries\php\php.exe" -d sys_temp_dir="%WP_CLI_TEMP%" "%WP_CLI_INSTALL_DIR%\wp-cli.phar" %*
# Build Your Own WAMP
This is a quick run through on how to manually install a bare bones `WAMP` stack in `Windows` with the recommended modules for `Composer`, `WordPress` and `AWS-SDK`.

This stack also includes `Xdebug`, `phpMyAdmin` and `WP-CLI`.

Notable features:

+ Does not use installers.
+ Does not register windows services.
+ Does not register environment variables.
+ Can be installed under "Program Files" or on a flash drive.

> [!CAUTION]
> Not secure for external hosting.

This should be a suitable environment for most CMS developers, it also serves as a good starting point for anyone who wants to learn more about how to set up their own web server.

I put this together because I wanted something portable that didn't come with all the bloat from installer solutions.

## Downloads:
**:page_facing_up: [Build Your Own WAMP](https://github.com/thefarside/build-your-own-wamp) :floppy_disk: [master](https://github.com/thefarside/build-your-own-wamp/archive/refs/heads/master.zip)**

**:page_facing_up: [Visual C++ Redistributable](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist) :floppy_disk: [Visual Studio 2015-2022](https://aka.ms/vs/17/release/VC_redist.x64.exe)**
> *Windows 11 comes with these redistributables built-in.*

**:page_facing_up: [Aestan Tray Menu](https://github.com/crazy-max/aetraymenu/tags) :floppy_disk: [1.6.2](https://github.com/crazy-max/aetraymenu/releases/download/1.6.2/aetraymenu.zip)**
> *This is an application launcher that sits in the taskbar.*

**:page_facing_up: [Apache](https://www.apachelounge.com/download/) :floppy_disk: [2.4.65-250724](https://www.apachelounge.com/download/VS17/binaries/httpd-2.4.65-250724-Win64-VS17.zip)**
  + :page_facing_up: [mod_fcgid](https://www.apachelounge.com/download/) :floppy_disk: [2.3.10](https://www.apachelounge.com/download/VS17/modules/mod_fcgid-2.3.10-win64-VS17.zip)

**:page_facing_up: [MariaDB](https://mariadb.org/download/) :floppy_disk: [11.8.2](https://mirrors.xtom.com/mariadb/mariadb-11.8.2/winx64-packages/mariadb-11.8.2-winx64.zip)**

**:page_facing_up: [PHP](https://windows.php.net/download) :floppy_disk: [8.4.11](https://windows.php.net/downloads/releases/php-8.4.11-nts-Win32-vs17-x64.zip)**
  + :page_facing_up: [Xdebug](https://xdebug.org/download) :floppy_disk: [3.4.5](https://xdebug.org/files/php_xdebug-3.4.5-8.4-nts-vs17-x86_64.dll)
  + :page_facing_up: [Imagick](https://mlocati.github.io/articles/php-windows-imagick.html) :floppy_disk: [3.7.0](https://downloads.php.net/~windows/pecl/releases/imagick/3.7.0/php_imagick-3.7.0-8.4-nts-vs17-x64.zip)
  + :page_facing_up: [timezonedb](https://pecl.php.net/package/timezonedb) :floppy_disk: [2025.2](https://downloads.php.net/~windows/pecl/releases/timezonedb/2025.2/php_timezonedb-2025.2-8.4-nts-vs17-x64.zip)
  + :page_facing_up: [igbinary](https://pecl.php.net/package/igbinary) :floppy_disk: [3.2.16](https://downloads.php.net/~windows/pecl/releases/igbinary/3.2.16/php_igbinary-3.2.16-8.4-nts-vs17-x64.zip)
  + :page_facing_up: [APCu](https://pecl.php.net/package/apcu) :floppy_disk: [5.1.24](https://downloads.php.net/~windows/pecl/releases/apcu/5.1.24/php_apcu-5.1.24-8.4-nts-vs17-x64.zip)

**:page_facing_up: [phpMyAdmin](https://www.phpmyadmin.net/downloads/) :floppy_disk: [5.2.3 All Languages](https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.zip)**

**:page_facing_up: [Composer](https://getcomposer.org/download/) :floppy_disk: [2.8.10](https://getcomposer.org/download/2.8.10/composer.phar)**
  + :page_facing_up: [Composer Public Keys](https://composer.github.io/pubkeys.html) :floppy_disk: [Dev](https://composer.github.io/snapshots.pub)
  + :page_facing_up: [Composer Public Keys](https://composer.github.io/pubkeys.html) :floppy_disk: [Tags](https://composer.github.io/releases.pub)
  + :page_facing_up: [7-Zip](https://www.7-zip.org/download.html) :floppy_disk: [25.00 CLI](https://www.7-zip.org/a/7z2500-extra.7z)
> *Don't forget to rename 7za.exe to 7z.exe.*
  + :page_facing_up: [7-Zip](https://www.7-zip.org/download.html) :floppy_disk: [EXE](https://www.7-zip.org/a/7zr.exe)
> *This is the 7zip standalone that's only useful for unzipping .7z files, download if you don't have and don't want 7zip installed on your system.*
  + :page_facing_up: [Git](https://git-scm.com/downloads/win) :floppy_disk: [2.50.1](https://github.com/git-for-windows/git/releases/download/v2.50.1.windows.1/PortableGit-2.50.1-64-bit.7z.exe)
> *This executable is a zip you can extract with 7zip.*

**:page_facing_up: [WP-CLI](https://github.com/wp-cli/wp-cli/tags) :floppy_disk: [2.12.0](https://github.com/wp-cli/wp-cli/releases/download/v2.12.0/wp-cli-2.12.0.phar)**

## Installation:
1. Download everything.
2. Install `Visual C++ Redistributable Visual Studio 2015-2022`.
3. Unzip everything.
4. Rename applicable files and directories.
5. Create the expected directory structure.
> *See the diagram below for steps 4 and 5.*
6. Initialize the `data` directory.
     + Open `mariadb\bin\mysql_install_db.exe`.
     + Delete `mariadb\data\my.ini`.
7. Launch `AeTrayMenu_NoME.exe`.
8. Setup [`phpMyAdmin configuration storage`](http://localhost/phpmyadmin/index.php?route=/check-relations).
     + Click `Create a database named 'phpmyadmin' and setup the phpMyAdmin configuration storage there.`
9. Verify setup.
   + **[`phpinfo()`](http://localhost/phpmyadmin/index.php?route=/phpinfo)**
   + **`Composer`**
     + Right-click the `AeTrayMenu_NoME` tray icon and select `Web root (shell)`.
     + Execute `composer diagnose`.
   + **`WP-CLI`**
     + Right-click the `AeTrayMenu_NoME` tray icon and select `Web root (shell)`.
     + Execute `wp --info`.
     > *The install `path` in `config.yml` defaults to `WAMP/www/wordpress`.*

```
WAMP
│   
├───binaries
│   ├───aetraymenu
│   │       AeTrayMenu_NoME.ini
│   │       
│   ├───apache
│   │   ├───conf
│   │   │       httpd.conf
│   │   │       
│   │   └───modules
│   │           mod_fcgid.so
│   │          
│   ├───mariadb
│   │       
│   └───php
│       │   php.ini
│       │   CORE_RL_*_.dll
│       │   IM_MOD_RL_*_.dll
│       │   FILTER_analyze_.dll
│       │   
│       ├───ext
│       │       php_xdebug.dll
│       │       php_imagick.dll
│       │       php_timezonedb.dll
│		│		php_igbinary.dll
│       │       php_apcu.dll
│       │       
│       └───tmp
│               
├───vendor
│   ├───phpmyadmin
│   │       config.inc.php
│   │       
│   ├───composer
│   │   │   composer.phar
│   │   │   
│   │   ├───bin
│   │   │   ├───7-Zip
│   │   │   │       7z.exe
│   │   │   │       
│   │   │   └───Git
│   │   │           
│   │   ├───home
│   │   │       keys.dev.pub
│   │   │       keys.tags.pub
│   │   │       
│   │   └───temp
│   │           
│   └───wp-cli
│       │   wp-cli.phar
│       │   
│       ├───config
│       │       config.yml
│       │       
│       └───temp
│               
└───www
        composer.bat
        wp.bat
        
```

## Updates:

Generally speaking all you have to do is replace the old folder contents with the new files and add your old config file back to it. There are some caveats to be aware of though:

+ PHP extensions and tools expect specific versions of PHP, so sometimes you may have to either compile your own or wait for someone else to release the necessary binaries before you can update.
+ The `data` folder in `mysql` or `mariadb`  is where the database lives, so make sure you add that back when you update.
+ It's good practice to read through the changelog before updating anything. I also recommend [`diff checking`](https://en.wikipedia.org/wiki/Diff#Usage) any config files instead of blindly copying them back over as well. I personally like to use [`WinMerge`](https://winmerge.org/), but [`git`](https://git-scm.com/docs/git-diff) is capable and [`Notepad++`](https://notepad-plus-plus.org/) also has a [`plugin`](https://github.com/pnedev/comparePlus) for it too.
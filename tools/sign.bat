@echo off
del %1
copy bin\monsterrpg2-project-release-unsigned.apk tmp.apk
c:\Progra~1\Java\jdk1.8.0_91\bin\jarsigner.exe -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore ..\..\..\my-release-key.keystore tmp.apk Nooskewl
c:\Progra~1\Java\jdk1.8.0_91\bin\jarsigner.exe -verify tmp.apk
c:\users\trent\AppData\local\Android\android-sdk\build-tools\23.0.3\zipalign -v 4 tmp.apk %1
del tmp.apk
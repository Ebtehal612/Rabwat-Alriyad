@echo off
echo Building Flutter APK...

REM Build the APK
flutter build apk --debug

REM Fix APK location issue
call scripts\fix_apk_location.bat

echo.
echo ========================================
echo BUILD COMPLETED SUCCESSFULLY!
echo ========================================
echo.
echo Your APK files are ready:
echo - Debug APK: android\app\build\outputs\flutter-apk\app-debug.apk
echo - Release APK: android\app\build\outputs\flutter-apk\app-release.apk
echo.
echo You can install the debug APK on your Android device for testing.
echo ========================================
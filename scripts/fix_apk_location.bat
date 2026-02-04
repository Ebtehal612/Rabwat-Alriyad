@echo off
echo Fixing APK location issue...

REM Create the expected build directory structure
if not exist "build\app\outputs\flutter-apk" mkdir "build\app\outputs\flutter-apk"

REM Copy APK files to expected location
if exist "android\app\build\outputs\flutter-apk\app-debug.apk" (
    echo Copying debug APK...
    copy "android\app\build\outputs\flutter-apk\app-debug.apk" "build\app\outputs\flutter-apk\app-debug.apk"
    echo Debug APK copied to: build\app\outputs\flutter-apk\app-debug.apk
)

if exist "android\app\build\outputs\flutter-apk\app-release.apk" (
    echo Copying release APK...
    copy "android\app\build\outputs\flutter-apk\app-release.apk" "build\app\outputs\flutter-apk\app-release.apk"
    echo Release APK copied to: build\app\outputs\flutter-apk\app-release.apk
)

echo.
echo APK files are available at:
echo - android\app\build\outputs\flutter-apk\app-debug.apk
echo - android\app\build\outputs\flutter-apk\app-release.apk
echo - build\app\outputs\flutter-apk\app-debug.apk (Flutter expected location)

echo.
echo Build completed successfully!
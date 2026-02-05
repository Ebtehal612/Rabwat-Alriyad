@echo off
echo Fixing Gradle build issues...

echo Cleaning Flutter project...
flutter clean

echo Cleaning Gradle cache...
rmdir /s /q android\.gradle 2>nul
rmdir /s /q android\build 2>nul
rmdir /s /q android\app\build 2>nul

echo Getting Flutter dependencies...
flutter pub get

echo Building APK...
flutter build apk --debug

echo Done!
pause
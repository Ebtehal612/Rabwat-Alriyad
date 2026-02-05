@echo off
echo Restarting Flutter app to load new assets...

echo Step 1: Cleaning project...
flutter clean

echo Step 2: Getting dependencies...
flutter pub get

echo Step 3: Running build runner...
dart run build_runner build --delete-conflicting-outputs

echo Step 4: Starting app on web...
flutter run -d chrome

echo Done!
pause
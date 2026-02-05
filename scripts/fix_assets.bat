@echo off
echo Fixing asset loading issues...

echo Step 1: Cleaning Flutter project...
flutter clean

echo Step 2: Getting dependencies...
flutter pub get

echo Step 3: Running on web (recommended)...
flutter run -d chrome

echo Done! Assets should now load properly.
pause
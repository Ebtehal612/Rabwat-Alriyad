@echo off
echo ========================================
echo   Running App with New Sections
echo ========================================
echo.

echo Step 1: Generating localizations...
flutter gen-l10n

echo Step 2: Getting dependencies...
flutter pub get

echo Step 3: Running on web...
flutter run -d chrome

echo Done! Check your app for the new sections:
echo - Why Choose Us section
echo - Special Offer section
pause
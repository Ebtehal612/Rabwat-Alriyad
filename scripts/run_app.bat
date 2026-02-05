@echo off
echo ========================================
echo    Rabwat Alriyad Flutter App Runner
echo ========================================
echo.

echo Choose your platform:
echo 1. Web (Chrome) - Recommended for development
echo 2. Android (with dependency bypass)
echo 3. Android (normal build)
echo.

set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" (
    echo.
    echo Starting web version...
    echo This is the recommended option for development and testing.
    echo.
    flutter run -d chrome
) else if "%choice%"=="2" (
    echo.
    echo Starting Android with dependency validation bypass...
    echo This may take 5-10 minutes for the first build.
    echo.
    flutter run --android-skip-build-dependency-validation
) else if "%choice%"=="3" (
    echo.
    echo Starting Android normal build...
    echo Warning: This may fail due to dependency version conflicts.
    echo.
    flutter run
) else (
    echo Invalid choice. Please run the script again.
    pause
    exit /b 1
)

echo.
echo Build completed!
pause
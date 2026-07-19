@echo off
echo.
echo Build and publish 'Release' for .NET Framework 4.8 (targeting all Windows 10/11 platforms)
echo.
pushd src\WOWCAM-CLI
dotnet publish -c Release
popd
echo.
echo Have a nice day.

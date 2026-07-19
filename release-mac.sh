#!/bin/sh
echo "Build and publish 'Release' for .NET 10 (targeting macOS on Apple silicon)"
dotnet publish ./src/WOWCAMCLI/WOWCAMCLI.csproj -c Release
echo "Have a nice day."

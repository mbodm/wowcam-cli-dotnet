#!/bin/sh
echo "Build and publish 'Release' for .NET 10 (as self-contained binary, targeting macOS on Apple silicon)"
CURRENTFOLDER=$(pwd)
cd ../src
dotnet publish -c Release
cd "$CURRENTFOLDER"
echo "Have a nice day."

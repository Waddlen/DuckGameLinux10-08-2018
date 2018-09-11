#!/bin/bash
pushd "`dirname "$0"`"

chmod -R a+rw .

if [ ! -d orig ]; then
  mkdir orig
  cp -R DInput.dll DuckGame.exe NVorbis.dll steam_api.dll Steam.dll Content orig/
fi

mono XnaToFna.exe --force-anycpu #--skip-content

MONOMOD_DEPENDENCY_MISSING_THROW=0 mono MonoMod.exe DuckGame.exe
mv MONOMODDED_DuckGame.exe DuckGame.exe

chmod a+x DuckGame.sh

popd

echo 'Add DuckGame.sh as a "non-Steam game" to your Steam libary.'
echo 'Otherwise, replace Steamworks.NET.dll with Steamworks.NET-stubbed.dll for restricted functionality.'


#!/bin/bash
# Add this "launcher" as a "non-steam game" to Steam.
# Feel free to use MonoKickstart instead, but Duck Game still refers to WinForms...
# I'll fix it, but for now, enjoy Duck Game in native(tm) quality with a few rendering offset bugs...
# - ade
cd "`dirname "$0"`"
mono DuckGame.exe $@

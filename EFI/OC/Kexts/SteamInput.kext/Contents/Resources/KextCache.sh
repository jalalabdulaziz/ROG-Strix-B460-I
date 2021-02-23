#! /bin/bash

successful_load=1

for k in com.AmbrosiaSW.AudioSupport com.valvesoftware.SteamInput; do
  if [ -n "$(kextfind -b $k)" ]; then
    kextload -b $k

    if [ $? -ne 0 ]; then
      successful_load=0
    fi
  fi
done

# Only rebuild the kext cache and remove the daemon once
# all kexts that we are responsible for are able to load.
#
# We don't need to rebuild it if only a portion of them
# are loadable as the daemon will load the loadable ones
# automatically on startup until they are all able to be
# loaded and cached.

if [ $successful_load -eq 1 ]; then
  touch /Library/Extensions /System/Library/Extensions
  kextcache -update-volume / -Installer -f

  rm /Library/LaunchDaemons/com.valvesoftware.SteamInputKextCache.plist
fi

exit 0

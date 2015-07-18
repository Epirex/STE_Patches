#!/bin/bash
echo -e "\e[0;32mPatcher for CyanogenMod 11\nStarting..."

PATCHERDIR=$(dirname $(readlink -f "$0"))
cd $PATCHERDIR
cd ../../../..
BASEDIR=$(pwd)

echo -e "\n\e[0;31mPatching AV:\e[0;34m"
cd $BASEDIR/frameworks/av
patch -p1 -N -i$PATCHERDIR/frameworks_av-Remove-Mediatek-changes.patch
patch -p1 -N -i$PATCHERDIR/frameworks_av-STE-Multimedia-Fix-1-4.patch
patch -p1 -N -i$PATCHERDIR/frameworks_av-STE-OMX-fix-getSupportedProfileLevel.patch
patch -p1 -N -i$PATCHERDIR/frameworks_av-video-streaming-fix.patch

echo -e "\n\e[0;31mPatching BASE:\e[0;34m"
cd $BASEDIR/frameworks/base
patch -p1 -N -i$PATCHERDIR/frameworks_base-STE-Multimedia-Fix-4-4.patch

echo -e "\n\e[0;31mPatching NATIVE:\e[0;34m"
cd $BASEDIR/frameworks/native
patch -p1 -N -i$PATCHERDIR/frameworks_native-STE-Multimedia-Fix-2-4.patch
patch -p1 -N -i$PATCHERDIR/frameworks_native-Add-legacy-sensors-fusion.patch

echo -e "\n\e[0;31mPatching CORE:\e[0;34m"
cd $BASEDIR/system/core
patch -p1 -N -i$PATCHERDIR/system_core-STE-Multimedia-Fix-3-4.patch
patch -p1 -N -i$PATCHERDIR/system_core-Fix-shutdown-reboot-bug.patch

echo -e "\n\e[0;31mPatching VOLD:\e[0;34m"
cd $BASEDIR/system/vold
patch -p1 -N -i$PATCHERDIR/system_vold-Allow-swapped-storage-paths-at-vold-init.patch

echo -e "\n\e[0;31mPatching TELEPHONY:\e[0;34m"
cd $BASEDIR/packages/services/Telephony
patch -p1 -N -i$PATCHERDIR/packages_Telephony-low-incall-volume-fix.patch

echo -e "\n\e[0;31mPatching BUILD:\e[0;34m"
cd $BASEDIR/build
patch -p1 -N -i$PATCHERDIR/build-use_GCC_4.8.patch

echo -e "\n\e[0;31mPatching ART:\e[0;34m"
cd $BASEDIR/art
patch -p1 -N -i$PATCHERDIR/art-fix.patch

echo -e "\n\e[0;31mPatching CHROMIUM:\e[0;34m"
cd $BASEDIR/external/chromium_org
patch -p1 -N -i$PATCHERDIR/chromium_org-Fix-video-playback-in-streaming.patch

echo -e "\n\e[0;32mEverything (probably) patched, have a nice day!\e[0m"

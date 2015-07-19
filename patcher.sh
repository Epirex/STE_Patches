#!/bin/bash

echo "Applying art patches"
cp patches/art-fix.patch art/
cd art
git apply art-fix.patch
rm art-fix.patch
cd ..

echo ""

echo "Applying build patches"
cp patches/build-Use-GCC-4.8.patch build/
cd build/
git apply build-Use-GCC-4.8.patch
rm build-Use-GCC-4.8.patch
cd ..

echo ""

echo "Applying chromium patches"
cp patches/external_chromium_org-Fix-video-playback-in-streaming.patch external/chromium_org
cd external/chromium_org
git apply external_chromium_org-Fix-video-playback-in-streaming.patch
rm external_chromium_org-Fix-video-playback-in-streaming.patch
cd ../..

echo ""

echo "Applying av patches"
cp patches/frameworks_av-Remove-Mediatek-changes.patch frameworks/av
cp patches/frameworks_av-STE-Multimedia-Fix-1-4.patch frameworks/av
cp patches/frameworks_av-STE-OMX-fix-getSupportedProfileLevel.patch frameworks/av
cp patches/frameworks_av-Video-streaming-fix.patch frameworks/av
cd frameworks/av
git apply frameworks_av-Remove-Mediatek-changes.patch
git apply frameworks_av-STE-Multimedia-Fix-1-4.patch
git apply frameworks_av-STE-OMX-fix-getSupportedProfileLevel.patch
git apply frameworks_av-Video-streaming-fix.patch
rm frameworks_av-Remove-Mediatek-changes.patch
rm frameworks_av-STE-Multimedia-Fix-1-4.patch
rm frameworks_av-STE-OMX-fix-getSupportedProfileLevel.patch
rm frameworks_av-Video-streaming-fix.patch
cd ../..

echo ""

echo "Applying native patches"
cp patches/frameworks_native-STE-Multimedia-Fix-2-4.patch frameworks/native
cp patches/frameworks_native-Add-legacy-sensors-fusion.patch frameworks/native
cd frameworks/native
git apply frameworks_native-STE-Multimedia-Fix-2-4.patch
git apply frameworks_native-Add-legacy-sensors-fusion.patch
rm frameworks_native-STE-Multimedia-Fix-2-4.patch
rm frameworks_native-Add-legacy-sensors-fusion.patch
cd ../..

echo ""

echo "Applying core patches"
cp patches/system_core-STE-Multimedia-Fix-3-4.patch system/core
cp patches/system_core-Fix-shutdown-reboot-bug.patch system/core
cd system/core
git apply system_core-STE-Multimedia-Fix-3-4.patch
git apply system_core-Fix-shutdown-reboot-bug.patch
rm system_core-STE-Multimedia-Fix-3-4.patch
rm system_core-Fix-shutdown-reboot-bug.patch
cd ../..

echo ""

echo "Applying base patches"
cp patches/frameworks_base-STE-Multimedia-Fix-4-4.patch frameworks/base
cd frameworks/base
git apply frameworks_base-STE-Multimedia-Fix-4-4.patch
rm frameworks_base-STE-Multimedia-Fix-4-4.patch
cd ../..

echo ""

echo "Applying Telephony patches"
cp patches/packages_services_Telephony-Low-incall-volume-fix.patch packages/services/Telephony
cd packages/services/Telephony
git apply packages_services_Telephony-Low-incall-volume-fix.patch
rm packages_services_Telephony-Low-incall-volume-fix.patch
cd ../../..

echo ""

echo "Applying vold patches"
cp patches/system_vold-Allow-swapped-storage-paths-at-vold-init.patch system/vold
cd system/vold
git apply system_vold-Allow-swapped-storage-paths-at-vold-init.patch
rm system_vold-Allow-swapped-storage-paths-at-vold-init.patch
cd ../..

echo ""

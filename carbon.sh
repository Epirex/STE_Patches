echo ""
echo "This document will cherry pick different fixes"
echo "    Cherry-picks patches for Carbon 4.4"
echo "==============================================="
echo ""
echo "[1/4] Fix STE OMX: frameworks/av"
cd frameworks/av
git fetch https://github.com/EpirexDevProjects/android_frameworks_av Carbon
git cherry-pick 199b5bd76c461074410ef90800e2ebe382f7fe3d
git cherry-pick 29a1c4e263ea86c0befd845106e29129af01a201
git cherry-pick ebc8f91fdeef3fb7070eb7e658dc1182c0dd187e
cd ..
echo "==============================================="
echo ""
echo "[2/4] Fix STE OMX: frameworks/native"
cd native
git fetch https://github.com/teamp8/android_frameworks_native_carbon4.4 kk
git cherry-pick 6e044d3d07d8c7b4fe569a395ac1d3a5517324a2
cd ..
echo "==============================================="
echo ""
echo "[3/4] Fix STE OMX: frameworks/base"
cd base
git fetch https://github.com/teamp8/android_frameworks_base_carbon4.4 kk
git cherry-pick e97d5c9e8568383bd7fdb37fffcf36bb2351ea37
cd ../..
echo "==============================================="
echo ""
echo "[4/4] Fix STE OMX: system/core | Shutdown-Reboot-bug"
cd system/core
git fetch https://github.com/teamp8/android_system_core_carbon4.4 kk
git cherry-pick bce3202f9cf5fd0cc0884cb6b35f108507d73a9c
git cherry-pick fed1e38673196cba1c5daa420a2fea003796c5b8
cd ..
echo "==============================================="
echo ""
echo "Allow to switch between storages"
cd vold
git fetch http://review.cyanogenmod.org/CyanogenMod/android_system_vold refs/changes/15/56515/2
git cherry-pick FETCH_HEAD
cd ../..
echo "==============================================="
echo ""
echo "Fix the Low-Incall Volume bug"
cd packages/services/Telephony
git fetch https://github.com/teamp8/android_packages_services_Telephony_carbon4.4
git cherry-pick 10b24bfe529f665d576a66fa6e83c5e08c0911f4
git cherry-pick 56e287418d6f1c139496a0b9a1b4346f491b7615
cd ../../..
echo "==============================================="
echo ""
echo "Fix video streaming fix in browser"
cd external/chromium_org
git fetch https://github.com/Epirex/android_external_chromium_org cm-11.0
git cherry-pick d50a349b18426be06608191ad3ab9b9d17e2c0a5
cd ../..
echo "==============================================="
echo ""
echo "Add gsm.mk"
cd vendor/carbon
git fetch https://github.com/teamp8/android_vendor_carbon4.4 kk
git cherry-pick e097b6bda9a14fe99f14764d9face50526604990
git cherry-pick 9486fd11f2508c3b849f0ba7deb7190e7fe70301
cd ../..
echo "==============================================="
echo ""
echo "Fix toolchain | Rename .zip"
cd build
git fetch https://github.com/teamp8/android_build_carbon4.4 kk
git cherry-pick f237fd8737480244016e3f2188303cd48c31c270
git cherry-pick c6adf0338529d2f458bc14a4991a55daeb49bd07
cd ..
echo "==============================================="
echo ""
echo "Finished, everything (probably) patched, have a nice day!"
echo ""

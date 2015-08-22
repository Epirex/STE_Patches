echo ""
echo "This document will cherry pick different fixes"
echo "    Cherry-picks patches for MoKee OS 4.4"
echo "==============================================="
echo ""
echo "[1/4] Fix STE OMX: frameworks/av"
cd frameworks/av
git fetch https://github.com/EpirexDevProjects/android_frameworks_av cm-11.0
git cherry-pick 64a82588b4e7efc171ff21d116903aebb7bc62a2
git cherry-pick bdb3f5e4b8db5af839742a83631b40319b7ebf81
git cherry-pick 16fe27e1a983033790125f6983b20b90ed4a622d
cd ..
echo "==============================================="
echo ""
echo "[2/4] Fix STE OMX: frameworks/native"
cd native
git fetch https://github.com/TeamCanjica/android_frameworks_native cm-11.0
git cherry-pick f5a8698ce9a3568cea95c03302deb068eff765bd
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_native refs/changes/11/59311/1
git cherry-pick FETCH_HEAD
cd ..
echo "==============================================="
echo ""
echo "[3/4] Fix STE OMX: frameworks/base"
cd base
git fetch https://github.com/TeamCanjica/android_frameworks_base cm-11.0
  git cherry-pick de30387b3c32c2a9cf653590c8454bd002bf0dd1
cd ../..
echo "==============================================="
echo ""
echo "[4/4] Fix STE OMX: system/core | Shutdown-Reboot-bug"
cd system/core
git fetch https://github.com/TeamCanjica/android_system_core cm-11.0
git cherry-pick 8aa242d1827875506ce3339d2df3e0fed6f89e42
git cherry-pick 347658ad1b53234b52d32d42fba2a72878b883c5
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
git fetch https://github.com/TeamCanjica/android_packages_services_Telephony cm-11.0
git cherry-pick fdf281fdabe5e7517eb96f2faf159bbcc74ae4a6
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
echo "Use GCC 4.8"
cd build
git fetch https://github.com/EpirexDevProjects/android_build cm-11.0
git cherry-pick 32b52016895e36944950e33e9d48b0d814c0296b
cd ..
echo "==============================================="
echo ""
echo "Finished, everything (probably) patched, have a nice day!"
echo ""

#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_build"$CL_RST
  cd build
  git fetch https://github.com/EpirexDevProjects/android_build cm-12.1
  git cherry-pick 31ac93f631a6f861991ded8266921102d7d54c0e
  cd ..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_frameworks_av"$CL_RST
  cd frameworks/av
  git fetch https://github.com/EpirexDevProjects/android_frameworks_av patch-1
  git cherry-pick 1117a2993141a5b089e138213396ecc0d7e76f76
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_frameworks_native"$CL_RST
  cd frameworks/native
  git fetch https://github.com/EpirexDevProjects/android_frameworks_native cm-12.1
  git cherry-pick ce62b9754d5fdcf0fd0587aade5eae1d2b5d32a7
  git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_native refs/changes/05/85405/2
  git cherry-pick FETCH_HEAD
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_system_core"$CL_RST
  cd system/core
  git fetch https://github.com/EpirexDevProjects/android_system_core cm-12.1
  git cherry-pick 1764365eae1e3efe7b460d3937e4b0f1a71a19ec
  git cherry-pick d959c5236c4f7e83927becc71026347f05d3ba29
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_frameworks_base"$CL_RST
  cd frameworks/base
  git fetch https://github.com/EpirexDevProjects/android_frameworks_base cm-12.1
  git cherry-pick 83385561d5d5c031a26bfa263606264b1262a4b2
  git cherry-pick 1a644e14da7b41ea9f9d0314ee3156d3d8fa2ad5
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_hardware_libhardware"$CL_RST
  cd hardware/libhardware
  git fetch http://review.cyanogenmod.org/CyanogenMod/android_hardware_libhardware refs/changes/06/85406/2
  git cherry-pick FETCH_HEAD
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_hardware_libhardware_legacy"$CL_RST
  cd hardware/libhardware_legacy
  git fetch https://github.com/EpirexDevProjects/android_hardware_libhardware_legacy cm-12.1
  git cherry-pick 1ce796d1057cbc4f2f5ef9b5287c70bbbe21c379
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_bionic"$CL_RST
  cd bionic
  git fetch https://github.com/EpirexDevProjects/android_bionic cm-12.1
  git cherry-pick d1eb51d246db5fc086c218cdacf6f7cdd1cc38c7
  cd ..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_packages_services_Telecomm"$CL_RST
  cd packages/services/Telecomm
  git fetch https://github.com/EpirexDevProjects/android_packages_services_Telecomm cm-12.1
  git cherry-pick c398004508b9e40897b2f8af9c1775edefa399d0
  cd ../../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_frameworks_opt_telephony"$CL_RST
  cd frameworks/opt/telephony
  git fetch https://github.com/EpirexDevProjects/android_frameworks_opt_telephony cm-12.1
  git cherry-pick 5eb846f60545d967617042b693e2d9af41c8d319
  cd ../../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_packages_apps_Settings"$CL_RST
  cd packages/apps/Settings
  git fetch https://github.com/EpirexDevProjects/android_packages_apps_Settings cm-12.1
  git cherry-pick f89d17f8e538560540380c0bdeff5f98489dd6d0
  cd ../../..
fi

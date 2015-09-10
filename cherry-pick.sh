#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_build"$CL_RST
  cd build
  git fetch https://github.com/EpirexDevProjects/android_build cm-12.1
  git cherry-pick 31ac93f631a6f861991ded8266921102d7d54c0e
  git cherry-pick fb3133ec6fa8a057e4ea8eb26c38735a0e9bc5d5
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
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_system_core"$CL_RST
  cd system/core
  git fetch https://github.com/EpirexDevProjects/pa_android_system_core lollipop-mr1
  git cherry-pick 8b198b5bec318e5fb6556ef9a1b9d4750880421c
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
  echo -e $CL_BLU"Cherrypicking android_packages_services_Telecomm"$CL_RST
  cd packages/services/Telecomm
  git fetch https://github.com/EpirexDevProjects/android_packages_services_Telecomm cm-12.1
  git cherry-pick af76118d70d66eea2349980124d797d9272d4f3b
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
  echo -e $CL_BLU"Cherrypicking android_frameworks_opt_net_wifi"$CL_RST
  cd frameworks/opt/net/wifi
  git fetch https://github.com/hastalafiesta/android_frameworks_opt_net_wifi cm-12.1
  git cherry-pick f2864d968922e082328153f8051d94836e87b6d9
  cd ../../../..
fi

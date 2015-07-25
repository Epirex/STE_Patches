#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_build"$CL_RST
  cd build
  git fetch https://github.com/EpirexDevProjects/android_build cm-12.1
  git cherry-pick a22f17677852770220ef9fc74d0fb148a5beaf92
  git cherry-pick 53037e3b014ac4e2638cd76c47d061e9d622cfaa
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
  cd ../..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_system_core"$CL_RST
  cd system/core
  git fetch https://github.com/EpirexDevProjects/android_system_core cm-12.1
  git cherry-pick 1764365eae1e3efe7b460d3937e4b0f1a71a19ec
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


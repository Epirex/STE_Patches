#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_build"$CL_RST
  cd build
  git fetch https://github.com/EpirexDevProjects/android_build cm-12.1
  git cherry-pick a22f17677852770220ef9fc74d0fb148a5beaf92
  git cherry-pick 53037e3b014ac4e2638cd76c47d061e9d622cfaa
  cd ..
fi

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_frameworks_av"$CL_RST
  cd frameworks/av
  git fetch https://github.com/EpirexDevProjects/android_frameworks_av cm-12.1
  git cherry-pick 3f5e41de9e8a9f11640380ac3e32a1897dbccfc1
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
  cd ../..
fi

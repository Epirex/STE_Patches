#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_build"$CL_RST
  cd build
  git fetch https://github.com/EpirexDevProjects/android_build cm-12.1
  git cherry-pick ac76f901df73bc21fa106199e6f2fdf7b435b481
  git cherry-pick 013498bbfcaaa694fe82742d9fe6650bd66491a6
  cd ..
fi

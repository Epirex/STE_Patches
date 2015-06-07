#!/usr/bin/env bash

if [ "$REPO_BRANCH" = "cm-12.1" ] || [ "$DEVICE" = "janice" ]
then
  echo -e $CL_BLU"Cherrypicking android_build"$CL_RST
  cd build
  git fetch https://github.com/EpirexDevProjects/android_build cm-12.1
  git cherry-pick 653803acda79dc9eb52def64f51a0f95ec18ce1e
  git cherry-pick 8b181a166944b88899bf3293b67b7801b4c58e16
  git cherry-pick 9ff0ee9a95657cc915a6e69a328b37cb99ca9d5a
  cd ..
fi

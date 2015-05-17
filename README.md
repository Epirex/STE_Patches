STE_Patches
===============


--------------------------------------------------------------

How to add these patches in my repo? you need add this in local_manifest.xml

      <project path="patches" name="Epirex/STE_Patches" revision="cm-11.0" remote="github" />

--------------------------------------------------------------

To apply patches:

      REPO_BRANCH="cm-11.0" DEVICE="janice" patches/cherry-pick.sh
      
--------------------------------------------------------------

NOTE: after repo sync, need apply patches again

--------------------------------------------------------------

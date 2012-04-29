patchrom_shadow
===============

Shadow (Droid X) specific files for PatchRom

From the directory above this, run these commands:


. build/envsetup.sh

cd shadow

rm -rf .build

find . -name .directory -delete
find . -name *~ -delete
find . -name .fuse* -delete
find . -name .??*.kate-swp -delete

make

You can also put those commands into a script.  The make_patch_shadow.sh file has been included as an example.



Kernel-Tool
===========

Kernel Tool helps users to unpack , pack , make a flashable zip for the kernel(boot.img)

Welcome To Kernel Tool

**Place boot.img in /home/username/kernel-tool/here** (root of the kernel-tool directory)

*********Setting Proper permissions*******

*cd-to-directory
*chmod a+x perm.sh
*./perm.sh
 

*********Unpack boot.img******************

*cd-to-directory
*./unpack.sh

*********Pack zImage and ramdisk**********

*cd-to-directory
*./packer.sh

*********Make a Flashable zip*************

*cd-to-directory
*make sure boot.img is persent in target/boot.img
*if you want to add modules add them in kernel-tool/tools/system/lib/modules
*./zipper.sh

*********Start new************************

*cd-to-directory
*./new.sh

******************************************

Thank you.

#! /bin/bash

# Kernel Tool	
# Author: Russell Dias
# Version: 0.0.1
# Date: May 19, 2013
# Contact: russell.dias98@gmail.com

#Kerenl Tool by russelldias

echo "Making Flashable zip"
cd target
# Making zip 
cp -r ../tools/META-INF META-INF
cp -r ../tools/system system
cp ../tools/signapk.jar signapk.jar 
cp ../tools/testkey.x509.pem testkey.x509.pem
cp ../tools/testkey.pk8 testkey.pk8
# zipping
zip -r kernel-tool.zip META-INF system boot.img 
echo "ZIP Ready, signing it"
java -jar signapk.jar testkey.x509.pem testkey.pk8 kernel-tool.zip kernel-tool-SIGNED.zip
# Cleanup
rm kernel-tool.zip
rm *.jar
rm *.pk8
rm *.pem
rm -r META-INF 
rm -r system
cd ..
# ...
 
s1=`ls -lh boot.img | sed -e 's/.* [ ]*\([0-9]*\.[0-9]*[MK]\) .*/\1/g'`
cd target 
s2=`ls -lh boot.img | sed -e 's/.* [ ]*\([0-9]*\.[0-9]*[MK]\) .*/\1/g'`
rm boot.img 
tput setaf 3
echo "Size of Initial boot.img = $s1" 
echo "Size of your boot.img = $s2"
tput setaf 1
echo "Flashable zip is target/kernel-tool-SIGNED.zip"
tput sgr0
setterm -bold
echo "Kernel Tool by russelldias"
sleep 2
echo "Thanks for using Kernel Tool"
sleep 2
echo "Please press [Enter] to exit."
tput sgr0
read ANS

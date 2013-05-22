# Kernel Tool by russelldias
tput setaf 4
if test -e zImage/zImage
   then echo "Found zImage"
else echo "Sorry. We did not find your zImage"
exit
fi
sleep 2
if test -d ramdisk
then echo "Found ramdisk" 
else echo "Sorry. We did not find your ramdisk"
exit 
fi
sleep 2
tput setaf 3
echo "Found both zImage and ramdisk"
./tools/mkbootfs ramdisk | gzip > ramdisk.gz
sleep 4
tput setaf 1
echo "Adding ramdisk into boot.img"
tput setaf 5
echo "Making boot.img"
sleep 4
mkdir -p target
./tools/mkbootimg --kernel zImage/zImage --ramdisk ramdisk.gz -o target/boot.img --base 10000000 
rm ramdisk.gz
i=`ls -lh boot.img | sed -e 's/.* [ ]*\([0-9]*\.[0-9]*[MK]\) .*/\1/g'`
cd target
o=`ls -lh boot.img | sed -e 's/.* [ ]*\([0-9]*\.[0-9]*[MK]\) .*/\1/g'`
tput setaf 2
echo "Size of Initial boot.img = $i"
echo "Size of your boot.img = $o"
tput setaf 6
sleep 1
echo "Check target/boot.img for output!"
sleep 1
echo "Kernel Tool by russelldias"
sleep 2
echo "Thanks for using Kernel Tool"



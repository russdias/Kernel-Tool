# Kernel Tool by russelldias
echo "Getting ready to unpack boot.img"
tput setaf 2
echo "Finding boot.img"
sleep 2
if test -e boot.img
  then
   tput setaf 5
   echo "Found boot.img"
   tput setaf 3
   echo "Making a zImage Folder"
   mkdir -p zImage
   echo "Making a ramdisk Folder"
sleep 1
   mkdir -p ramdisk
   mkdir -p temp
   tput setaf 1  
echo "Unpacking boot.img"
sleep 3
   ./tools/unpackbootimg -i boot.img -o temp 
   cp temp/boot.img-zImage zImage/zImage 
   rm -rf temp/boot.img-zImage 
   cd ramdisk
sleep 3
   echo "Extracting ramdisk properly"
   gzip -dc ../temp/boot.img-ramdisk.gz | cpio -i 
   cd .. 
   rm -rf temp
   tput setaf 2
else echo "Sorry. We did not find your boot.img"
fi
echo "kernel Tool by russelldias"
sleep 2
echo "Thanks for using Kernel Tool"




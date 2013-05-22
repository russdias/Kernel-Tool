# Kernel Tool by russelldias
tput setaf 4
echo "Finding Files and Folders"
sleep 1
tput setaf 2
echo "Removing zImage"
sleep 3
if test -e zImage
  then
   rm -rf zImage
fi 
echo "Removed"
sleep 1
echo "Removing ramdisk"
sleep 3
if test -e ramdisk
  then 
   rm -rf ramdisk
fi
echo "Removed"
sleep 1
echo "Removing output folder"
sleep 3
if test -e target
  then 
   rm -rf target
fi
echo "All Done."
sleep 1
echo "Kernel Tool by russelldias"
echo "Thanks for using Kernel Tool"

 

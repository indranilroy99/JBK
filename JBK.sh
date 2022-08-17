#!/bin/bash

echo " "
red="\e[1;31m"
green="\e[1;32m"
black="\e[1;30m"
yellow="\e[1;33m"
blue="\e[1;34m"
purple="\e[1;35m"
cyan="\e[1;36m"
gray="\e[1;37m"
end="\e[0m"
figlet Just-B@ckup  ;echo -e "${cyan}	       🛡️ B@CKUP @NYTH!NG @NYWHERE🛡️		${end}" /n
echo " "
echo  -en   "${green} [+] Choose  an option from the following: ${end}"
echo " "
echo  "   1.Backup Entire Hard Disk"
echo  "   2.Backup a Partition "
echo  "   3.Create An Image Of Hard Disk "
echo  "   4.Restore Using Hard Disk Image"
echo  "   5.Backup CDROM Into An ISO Disk Image "
sleep 1

echo -en    "${green} [+] Enter Your Selection Here >>  ${end}" 
read option
echo " "
echo  -en   "${green} [+] Enter The Path Of The Source Hard Disk (ex./dev/sd1) : ${end}"
read srchdd
echo  -en   "${green} [+] Enter The Path Of The Target Hard Disk (ex./dev/sd2) : ${end}"
read trghdd


case $option in 
1)echo -e "${yellow} [+] Creating backup for the Entire Disk ${end}"
  dd if=$srchdd  of=$trghdd conv=noerror;;

2)echo -e "${yellow} [+] Creating backup for the Partition ${end}"
  dd if=$srchdd  of=$trghdd/partition.img  conv=noerror ;;

3)echo -e "${yellow} [+] Creating an image for the Hard Disk ${end}"
  dd if=$srchdd  of=$trghdd/hdadisk.img conv=noerror;;

4)echo -e "${yellow} [+] Restoring from the Hard Disk ${end}"
  dd if=$srchdd  of=$trghdd/hdadisk.img  conv=noerror;;

5)echo -e "${yellow} [+] Creating backup for CDROM ${end}"
  dd if=$srchdd  of=$trghdd/isoimage.iso ;;



 *) echo  -en "${red}   invalid option !    ${end}" ;;

esac 
echo  -en  "${cyan}   Exitting....   ${end}" 
sleep 2






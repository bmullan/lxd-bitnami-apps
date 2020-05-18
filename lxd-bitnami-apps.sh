#!/bin/bash

# download the Bitnami Linux .run installer file for the app you want to your Linux ~/Downloads
# directory.   ~/Downloads is usually the default for files downloaded using a web browser
#
# find the Bitnami Installer .run file you downloaded
#
#      $ ls ~/Downloads/*.run
#
# Execute this script and pass 2 parameters
#    param 1 = the Name you want to give your container
#    param 2 = the name of the Bitnami Application Installer you downloaded

cn_name=$1

runfile=$2

# Use the "lxc" commmand create the LXD Container  (we are assuming an ubuntu bionic here)

lxc launch ubuntu:b $cn_name

# from the Host we execute the "lxc file push" command to copy that downloaded .run file
# to the Container's "$cn_name/root/" directory

lxc file push ./Downloads/$runfile $cn_name/root/

# Make the .run file in the Container executable by root

lxc exec $cn_name -- bash -c "chmod 755 /root/$runfile"

clear
echo "===================================================================="
echo " Answer all the following questions with the default answers for now"
echo "===================================================================="
echo
echo

# install & then run the Bitnami Wordpess/NGINX .run file

lxc exec $cn_name -- bash -c "/root/$runfile"

clear
echo "========================================================================"
echo
echo " Application Installation is Complete in the LXD container."
echo
echo " Now go back to your host, open a WebBrowser and input the IP address of"
echo " the LXD Container we called 'wordpress' and you should see your new "
echo " WordPress server displayed."
echo
echo " you can repeat this with any of the other Bitnami Applications so each"
echo " Applicaiton is running in its own LXD container"
echo
echo
read -p " Press any Key to continue... "
echo
clear


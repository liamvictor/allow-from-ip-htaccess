#!/bin/bash
#--------------------------------------------------------------------------
# Liam Victor Delahunty
# liamvictor@gmail.com
# http://www.onlinesales.co.uk
# Simple as...
# Update a htaccess file with my IP address
# Replacing the old entry for "# Liam"
#--------------------------------------------------------------------------
file=/home/blader/public_html/secure/admin/.htaccess
today=$(date  +%Y-%m-%d)
myip="${SSH_CLIENT%% *}" # parameter substitution
clear
echo ${file}
echo ""
cat ${file}
echo ""
allow=$(echo "allow from" ${myip} " # Liam " ${today})
echo ${allow}
echo ""
sed -i "/# Liam/s/.*/$allow/1" ${file}
cat ${file}

#!/bin/bash
#
# this script puts some picture files into a Pictures directory in our home directory
# it does some error testing
# it summarizes the Pictures directory when it is done
#

# Task 1: Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
#   - use the same kind of testing that is already in the script to only download the tarfile if you don't already have it and  to make sure the download and extraction commands work, then delete the local copy of the tarfile if the extraction was successful

# make a Pictures directory if we don't have one - assumes we have a home directory
test -d ~/Pictures || mkdir ~/Pictures

# || only runs second command if first commands fails. so if Picture directory doesn't already exist in home directory it creates a Pictures directory

# download a zipfile of pictures to our Pictures directory if it isn't already there - assumes you are online
test -f ~/Pictures/pics.zip || wget -q -O ~/Pictures/pics.zip http://zonzorp.net/pics.zip

# wget command is used to get files from web. so by using || we check if file already exists and if not we donwload/get file from web

# unpack the downloaded zipfile if it is there, then delete the local copy of the zipfile
test -f ~/Pictures/pics.zip && unzip -d ~/Pictures -o -q ~/Pictures/pics.zip && rm ~/Pictures/pics.zip

# && only runs second command if first command was successfull so we initially check if pics.zip exist if so we then extract the file using unzip command and then remove .zip file after successful extraction

# Make a report on what we have in the Pictures directory
test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF

# Cat command enables a terminal text editor which is used to print acquired disk space. du command is used to calculate disk space used by typing ~/Pictures we specify disk space used by Pictures in Home directory

#downloading pics.tgztarfile

test -f ~/Pictures/pics.tar || wget -q -O ~/Pictures/pics.tar http://zonzorp.net/pics.tgz

# we check if we have .tar file and if not we get/download it from web

# Unpacking tar file


test -f ~/Pictures/pics.tar && tar -xvf ~/Pictures/pics.tar -C ~/Pictures/ && rm ~/Pictures/pics.tar

# tar -xvf is used to extract .tar extensions.
# -x Extract
# -v Show progress
# -f File (eg. work on "thisfile" )
# -C specifies in which directory does file needs to be extracted

#making report

test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF

# we again use cat command to finalize our report

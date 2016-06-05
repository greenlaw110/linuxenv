#!/bin/sh
mkdir /tmp/__cdrom
file=$1
if [ -z $file ]; then
    file=cdrom
fi

if [ "$file"=="--keep-dir" ]; then
    file=cdrom
    cp -R * /tmp/__cdrom
else 
    for filename in *; do
        if [ -d $filename ]; then
            cp -R $filename/* /tmp/__cdrom
        fi
    done
fi

genisoimage -r -J -o $file.iso /tmp/__cdrom
rm -rf /tmp/__cdrom

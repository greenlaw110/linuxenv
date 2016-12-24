#!/bin/sh
if [ -z $1 ]; then
    for filename in *; do
        if [ "$filename" == '.' ]; then
            echo skip
        else 
            create_img.sh $filename
        fi
    done
else 
    file=$1
    folder=$2
    if [ -z $folder ]; then
        folder=$file
    fi
    dd if=/dev/zero of=$file.img bs=1k count=1440
    sudo losetup /dev/loop0 $file.img
    sudo mkfs -t vfat /dev/loop0
    sudo losetup -d /dev/loop0
    sudo mkdir /media/floppy
    sudo mount $file.img /media/floppy
    sudo cp $folder/* /media/floppy
    sudo umount /media/floppy
    sudo rmdir /media/floppy
fi


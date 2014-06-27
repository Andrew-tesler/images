#!/bin/bash

#------------------------------------------
# andrey.tesler@compulab.co.il
# Script for burning images to usb with gui
# for choosing image
#-------------------------------------------


declare -a ARRAYNAME

# Print on the terminal: Message to print Status to print (OK, INFO, ERROR)
function print() {
    message=$1
    status=$2
    source ./message.sh $message $status
}

# Save all the content of the given folder to an array.
function content() {
    folder=$1
    echo "folder: $folder"

}

print test INFO

content "/tmp"
echo $ARRAYNAME

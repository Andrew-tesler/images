#!/bin/bash

# Recive message and status (OK,ERROR,INFO) and print in on the console

message=$1
status=$2
infoMessage=$3

#echo -ne "$message \t\t " 

    case $status in

	OK)
	   
	    Message="\e[39m$message"
	    status="\e[92m$status"
	    ;;
	ERROR)
	    Message="\e[39m$message"
	    status="\e[91m$status"
	    ;;
	INFO)
	    Message="\e[39m$message"
	    status="\e[93m$status"
	    ;;
	*)
	    Message="Somthing wrong with message.sh input should be message.sh text to print , status(OK,INFO,ERROR)"
	    ;;
    esac

    echo -ne "[$status\e[0m]\t"
    
    echo -en "$Message\t\e[0m"
    
    echo -e "$infoMessage"
  #  echo -e "$status\e[0m"

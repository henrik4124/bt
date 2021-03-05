#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
nc=`tput sgr0`

clear
echo "   ___ __  _____   ___  ______           _       _           _            ";
echo "  /   /  |/ __  \ /   | | ___ \         | |     | |         | |           ";
echo " / /| \`| |\`' / /'/ /| | | |_/ / __ _ ___| |__   | |_ ___ ___| |_ ___ _ __ ";
echo "/ /_| || |  / / / /_| | | ___ \/ _\` / __| '_ \  | __/ _ / __| __/ _ | '__|";
echo "\___  _| |./ /__\___  | | |_/ | (_| \__ | | | | | ||  __\__ | ||  __| |   ";
echo "    |_\___\_____/   |_/ \____/ \__,_|___|_| |_|  \__\___|___/\__\___|_|   ";
echo "                                                                          ";
echo "                                                                          ";

echo "${red}Make sure this file is in same location as your batch${nc}"

SCRIPTPATH=$(dirname "$SCRIPT")

echo "${green}current location: $SCRIPTPATH${nc}"

##echo "location for bash file?"
	
##	read loc

##	cd $loc

echo "--------------------------------------------------------------------------"

sleep 4

echo "file name?"

	read fil

echo " "

echo "Finding ${red}error(s)${nc}:"

echo "-------------------------------------------------------------"

sleep 2

bash -n $fil

echo " "

echo "-------------------------------------------------------------"

sleep 5

echo "Save faults as txt file?"

	read svar

if [ $svar == yes ];

	then

		echo " "
		echo "following was saved as ${green}4124BashTester${nc} in ${green}txt${nc} format:"
		echo "--------------------------------------------------"

		bash -n $fil 2>&1 | tee 4124BashTester.txt
		echo " "
		sleep 5

		exit

	else

		echo "No txt file was chosen."
		sleep 2

		echo "exiting"
		sleep 5

		clear

fi
#!/bin/bash

PEC_PATH=/home/datasci/PEC

mkdir -p $PEC_PATH

echo -ne "Please type the number of the activity you want to download: "
read input
if [ $input -eq $input 2>/dev/null ]
then

	echo -ne "Please select the language you want to use: type 0 for Catalan, 1 for Spanish "
	read input2	
	if [ $input2 -eq $input2 2>/dev/null ]
	then

		cd $PEC_PATH
		if [ ! -d "$PEC_PATH/prog_datasci_${input}" ]; then
	    			
			if [ "$input2" -eq "0" ]; then
				echo "Downloading PEC $input in CATALAN"
				git clone https://eimtgit.uoc.edu/prog_datasci_cat/prog_datasci_${input}.git
			else
				echo "Downloading PEC $input in SPANISH"
				git clone https://eimtgit.uoc.edu/prog_datasci/prog_datasci_${input}.git
			fi

			echo "OK! Files downloaded in $PEC_PATH/prog_datasci_${input}"
		else
			echo "Error: the folder $PEC_PATH/prog_datasci_${input} is already created."
		fi
    else
		echo "Error: $input2 is not a valid language. You should type either 0 (Catalan) or 1 (Spanish)."
	fi
else
    echo "Error: $input is not a valid activity number."
fi
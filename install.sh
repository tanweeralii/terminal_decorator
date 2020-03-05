#!/bin/bash
hello=$PWD;
cd ~/
if grep -q "alias decorator='$hello/main.sh'" ".bashrc"
then
	if grep -q "alias sudo='sudo '" ".bashrc"
	then
		sudo cp $hello/functions.sh ~/functions.sh
		sudo cp $hello/colors.sh ~/colors.sh
		echo "ok";
	else
		echo "alias sudo='sudo '" >> ~/.bashrc;
		sudo cp $hello/functions.sh ~/functions.sh
		sudo cp $hello/colors.sh ~/colors.sh
	fi
else
	echo "alias decorator='$hello/main.sh'" >> ~/.bashrc
	if grep -q "alias sudo='sudo '" ".bashrc"
        then
		sudo cp $hello/functions.sh ~/functions.sh
		sudo cp $hello/colors.sh ~/colors.sh
		echo "ok";
        else
                echo "alias sudo='sudo '" >> ~/.bashrc;
		sudo cp $hello/functions.sh ~/functions.sh
		sudo cp $hello/colors.sh ~/colors.sh
        fi
fi

source ~/.bashrc

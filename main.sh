#!/bin/bash

if [ $EUID -ne 0 ]
then echo "Please run as root";
	exit
fi
source ~/functions.sh
source ~/colors.sh

echo "Creating hello.txt";
touch hello.txt;
chmod 777 hello.txt;
echo "Creating final.txt";
touch final.txt;
chmod 777 final.txt;
echo "Creating final1.sh";
touch final1.sh;
chmod 777 final1.sh;
echo "Creating final1.txt";
touch final1.txt;
chmod 777 final1.txt;
echo "Enter a string of max 4 letters [A-Z]"
read -p "(give space between each letter):" str
read -a fullname <<< $str

echo "Text color [Please use only small letters without space]"
echo "Choose any one color for text"
read -p "(white,black,red,lightred,green,lightgreen,orange,lightyellow,blue,lightblue,purple,lightpurple,aqua,lightaqua,gray,darkgray):" text

echo "source ~/colors.sh" > final1.sh;
echo "echo '\${$text}${bold}" >> final1.sh;

echo "${green}";
${fullname[0]} > hello.txt 
echo "Copying First letter in hello.txt";
${fullname[1]} >> hello.txt
echo "Copying second letter in hello.txt";
${fullname[2]} >> hello.txt
echo "Copying third letter in hello.txt";
${fullname[3]}>> hello.txt
echo "Copying fourth letter in hello.txt";
echo "Creating file final.txt"
cat hello.txt | head -n11 > final.txt
echo "Creating file final1.sh";
echo "Copying first letter into final.txt"
cat hello.txt | sed -n '12,22p' | paste final.txt - > final1.txt
echo "Copying first and second letter in final1.txt"
cat hello.txt | sed -n '23,33p' | paste final1.txt - > final.txt
echo "Copying first, second and third letter in final.txt"
cat hello.txt | sed -n '34,44p' | paste final.txt - > final1.txt
echo "Copying first, second, third and fourth letter in final1.txt";
echo "Removing files final.txt and hello.txt";
rm final.txt hello.txt;
cat final1.txt >> final1.sh;
echo "';" >> final1.sh;
sed -i "s/'/\"/g" final1.sh;
echo "echo '${normal}';" >> final1.sh;

if awk '{ if($1== "source") print $0;}' ~/.bashrc | grep "final1.sh"
then 
	echo "${red}Removing previous pattern";
	echo "${green}";
	sed -i '/^source.*final1.sh$/d' ~/.bashrc;
	echo "source $PWD/final1.sh" >> ~/.bashrc;
else echo "source $PWD/final1.sh" >> ~/.bashrc
fi
echo "Done";

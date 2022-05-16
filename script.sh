#! /bin/sh


FILE=""
DIR="$1"
# init
# look for empty dira

echo $DIR
#pwd
if [ -d "$DIR" ]
then
	if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
	 for entry in "$DIR"/*
		do
  			FILE="$entry" 
			#echo "\n"
			myFileSizeCheck=$(stat -c %s "$FILE")
			if [ -s $FILE ] 
			then
				echo "Has Contents"
				echo $FILE
				pwd
				cp $FILE otherfile.DAT 
				cp MGMCR_RED.DAT $HOME/srinivas/dummy/
				exit
			else
				
				cp MGMCR_BLUE.DAT $HOME/srinivas/$FILE
				exit
				
				
			fi	
		done
	else
    echo "$DIR is Empty"
	fi
else
	echo "Directory $DIR not found."
fi


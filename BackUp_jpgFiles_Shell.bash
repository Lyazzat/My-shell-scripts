#The first two characters of the first line should be #!, 
#then follows the path to the shell that should interpret the commands that follow. 
#Blank lines are also considered to be lines, so don't start your script with an empty line.

#!/bin/bash	

cd ~/Documents/myfolder

for i in `ls -1 *.jpg`          #back ticks `` - you can insert unix command inside of another unix command by using back ticks
								# ls -1 : list documents in myfolder -1 one line at a time anything that ends with .jpg
do 
	cp "$1" "..backup/$i.bak"   #copy that file, go one step above directory and append to the file name .bak
	echo "$i backed up!"		#create copies in 
done 
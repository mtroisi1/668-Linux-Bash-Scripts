#!/bin/bash

### Make this a bash script that can be executed by putting
### a "shebang" at the top of the file

echo "It works!"

### Execute command that prints every command as it is executed


### (1) In your home directory make a directory called RAW_DATA

cd
mkdir RAW_DATA

### (2) Copy all .fna fasta files  
###     from home directory into RAW_DATA (must work from any directory.)

cp $HOME/*.fna $HOME/RAW_DATA/

### (3) Do the same with all primer files ending with .csv

cp $HOME/*.csv $HOME/RAW_DATA/

### (4) In your home directory, make 2 directories: P_DATA and RESULTS

cd 
mkdir P_DATA
mkdir RESULTS

### (5) Add all three directories to your $PATH: ~/RAW_DATA, ~/P_DATA
###     and ~/RESULTS

PATH=$PATH:$HOME/RAW_DATA
PATH=$PATH:$HOME/P_DATA

### (6) Write your entire $PATH, the name RAW_DATA and the 
###    contents of this directory (the names of the files) into a new file 
###    called 'readme.txt' in your home directory

echo $PATH > ~/readme.txt
echo "RAW_DATA" >> ~/readme.txt
ls >> ~/readme.txt


### (7) The last command should dump the contents of readme.txt
###     to the terminal.

cat readme.txt


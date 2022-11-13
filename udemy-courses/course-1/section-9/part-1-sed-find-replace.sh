#!/bin/bash

# This scripts contains a set of sed commands
# which find and replace the text in different files.
# IMPORTANT: some commands actually change the file but some don't.

# The following commands don't change the passed file
sed 's/assistant/assistant to the/' manager.txt # Find and replacement
sed 's/my wife/sed/' love.txt

sed 's/MY WIFE/sed/' love.txt
sed 's/MY WIFE/sed/i' love.txt # Case insensitive - "i" flag
sed 's/MY WIFE/sed/I' love.txt # Case insensitive - "I" flag

sed 's/my wife/sed/g' love.txt # Not just the first occurence replacemant - "g" flag
sed 's/my wife/sed/2' love.txt # Replaces the second occurence - "digit" flag
sed 's/my wife/sed/g' love.txt > my-new-love.txt # Sends the command output to a new file

# This command does an actual replacement in the passed file
sed -i.bak 's/my wife/sed/' love.txt # Does a replacement and a backup of the original file

sed 's/love/like/gw like.txt' love.txt # Writes to a new file the result output - "w" flag

# The following commands does the same thing
cat like.txt | sed 's/my wife/sed/g'
sed 's/my wife/sed/g' like.txt 

# How to change the default delimeter '/' to the custom one ('#', ':')
echo '/home/master' | sed 's/\/home\/master/\/export\/users\/masterwu/'
echo '/home/master' | sed 's#/home/master#/export/users/masterwu#'
echo '/home/master' | sed 's:/home/master:/export/users/masterwu:'
exit 0
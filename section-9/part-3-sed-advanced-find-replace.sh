#!/bin/bash

# This scripts contains a set of advanced sed commands
# which find and replace the text in different files.

# Runs a set of sed commands from file
sed -f script.sed config
# Replaces "apache" on the 2-nd line
sed '2 s/apache/httpd/' config
# Does the same as previous command
sed '2s/apache/httpd/' config
# Replaces "apache" only where the word "Group" was found
sed '/Group/ s/apache/httpd/' config
# Replaces starting from the 1-st line and till the 3-rd inclusively
sed '1,3 s/run/execute/' config
 # Replaces starting from the 1-st line and till the 4-th inclusively
sed '1,4 s/run/execute/' config
# Replaces starting from the line that consists "#User" 
# and ending with the blank line 
sed '/#User/,/^$/ s/run/execute/' config 
exit 0
#!/bin/bash

# This scripts contains a set of sed commands
# which delete text lines in different files

sed '/This/d' love.txt
sed '/love/d' love.txt

sed '/^#/d' config
sed '/^$/d' config

sed '/^#/d ; /^$/d' config # Two sed commands in one

# Two ways of executing multiple sed commands in one
sed '/^#/d ; /^$/d ; s/apache/httpd/' config
sed -e '/^#/d' -e '/^$/d' -e 's/apache/httpd/' config
exit 0
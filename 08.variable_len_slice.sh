#!/usr/bin/env bash
#
# ....
# ...


#variable="hello tom, this is my house~"
#echo "variable's len: ${#variable}"
#echo "variable's slice: ${variable: 11: 4}"
#
#
#echo "variable's slice[11:7]: ${variable: 11:7}"
#echo "variable's slice[11:]: ${variable: 11}"
#
#echo "variable's slice[-6:6]: ${variable: -6:6}"
#
#echo "variable's slice[#*chars]: ${variable#*,}"

var='hello 111, hello 222, hello 333'
echo ${var%111*}

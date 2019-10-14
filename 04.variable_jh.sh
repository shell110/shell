#!/usr/bin/env bash
#
# filepath: shell/01.helloworld.sh
# email: hlions@163.com
# author: hlions
# date: 2019/10/12/11:34
# modify_time: @times
# usage: variable jh


var01='hello_111'
var02='world_222'
echo "交换前: ${var01} ${var02}"

var03=${var01}
var01=${var02}
var02=${var03}
echo "交换后: ${var01} ${var02}"

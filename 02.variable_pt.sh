#!/usr/bin/env bash
#
# filepath: shell/02.variable_pt.sh
# email: hlions@163.com
# author: hlions
# date: 2019/10/12
# modify_time: 2019/10/12/11-22
# usage: study pt variable

# 变量的声明方式
var01=12
var02=3.14

var03='string'
var03_a="this's my house"
var03_b="this first line.\n
this second line.\n
this third line."

var04=true

# 变量的调用
# python: print(var01)
# shell: echo ${var01}
echo ${var01}
echo ${var02}
echo ${var03}
echo ${var03_a}
echo -e ${var03_b}
echo ${var04}

#!/usr/bin/env bash
#
# filepath: shell/01.helloworld.sh
# email: hlions@163.com
# author: hlions
# date: 2019/10/12/14:09
# modify_time: @times
# usage: global nonlocal variable


# 全局变量就是普通声明的变量,形式为: 变量名=值
variable='hello world'

function println() {
  local variable='hello kitty'
  echo "函数中变量值variable: ${variable}"
}

echo "全局变量variable: ${variable}"
println
echo "全局变量variable: ${variable}"

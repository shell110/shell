#!/usr/bin/env bash
#
# filepath: shell/01.helloworld.sh
# email: hlions@163.com
# author: hlions
# date: 2019/10/12/11:41
# modify_time: @times
# usage: study read and $().


variable='hello world'
echo ${variable}

# python: name = input('please input your name: ')
# shell: read -p 'please input your name: ' name

read -p 'please input your name: ' name
read -p 'please input your age: ' age
echo "你的名字为: ${name}, 你的年龄为: ${age}"

# 获取一个命令的执行结果,并赋值到一个变量身上
# hostname -->> hlions
hostName=$(ls /opt)
echo ${hostName}

#!/usr/bin/env bash
#
# filepath: shell/01.helloworld.sh
# email: hlions@163.com
# author: hlions
# date: 2019/10/12/14:22
# modify_time: @times
# usage: location variable


# 备份文件的命令: 
# 	功能: 针对某个文件,对其进行备份 ==>> hello.txt => hello.txt.bak
# 	需要用到的命令: cp

# cp hello.txt hello.txt.bak
cp -rf $1 $1.bak

echo "本次执行的文件名字为: $0"

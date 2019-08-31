#!/usr/bin/env bash
#
# Author: bavdu
# encoding: utf8
# usage: initial server


# 关闭防火墙和selinux安全机制
systemctl stop firewalld && systemctl disable firewalld
sed -ri s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
setenforce 0

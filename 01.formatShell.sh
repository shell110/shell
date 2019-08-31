#!/usr/bin/env bash
#
# encoding: utf8
# author: bavdu
# date: 2019/07/22 
sudo yum -y install vsftpd
if [ $? -eq 0 ];then
	sudo rm -rf /var/ftp/*
fi
sudo systemctl start vsftpd && sudo systemctl enable vsftpd

#!/usr/bin/env bash
#
# filepath:shell/project/01.sh
# email:1540448263@qq.com
# Author: shell110
# date:2019/10/12/16:42
# usage: system init of website


# 关闭防火墙和selinux安全机制
systemctl stop firewalld && systemctl disable firewalld
sed -ri s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
setenforce 0

# 在系统中安装常用的运维工具
yum -y install vim unzip wget lsof net-tools epel-release ntpdate
yum -y groupinstall "Development Tools"

# 设置系统的时间自动同步互联网时间
# 添加计划任务
echo "* * */7 * *   bash /tasks/ntpSync.sh" >>/var/spool/cron/$(whoami)
# 写脚本
cat <<-EOF >/tasks/ntpSync.sh
#!/usr/bin/env bash
#
# author: bavdu
# date: @2019/07/22
# usage: sync system time.

if [ ! -f /usr/bin/ntpdate ];then			# !取反, -f判定是否存在这个文件
    yum -y install ntpdate
    ntpdate -b ntp1.aliyun.com &			# 同步时间
else
    ntpdate -b ntp1.aliyun.com &
fi
EOF


# 设置历史命令显示时间及日期
echo "export HISTSIZE=10000" >>/etc/profile
echo "export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S - "" >>/etc/profile
source /etc/profile

# 将系统文件进行锁定
chattr +ai /etc/passwd /etc/shadow /etc/group

# 结束标志
if [ $? -eq 0 ];then
	exit 0			# 规定退出的返回状态码
else
  exit 12345




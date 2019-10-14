#!/usr/bin/env bash


#read -p "please input: " variable
#
#case ${variable} in
#  1)
#    yum -y install wocao
#    ;;
#  2)
#    yum -y install woca
#    ;;
#  *)
#    echo "这个case只支持标签1和标签2, 其他的不支持"
#    ;;
#esac

cat <<-EOF
      +----------------------------+
      |         系统管理工具       |
      +----------------------------+
      |    a. 显示系统中用户数量   |
      |    2. 显示系统中进程数量   |
      |    3. 退出                 |
      +----------------------------+
EOF
read -p "请输入你的选择: " choose
case ${choose} in
  a)
    number=$(wc -l /etc/passwd)
    echo "当前系统中用户的数量为: ${number: 0: 3}"
    ;;
  2)
    number=$(ps aux | wc -l)
    echo "当前系统中进程的数量为: ${number}"
    ;;
  3)
    exit
    ;;
  *)
    echo "你输错了,笨蛋,假名"
    ;;
esac



















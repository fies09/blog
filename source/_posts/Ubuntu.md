title: Ubuntu
comments: true
copyright: true
tags:
  - Linux
  - Ubuntu
categories: Linux
abbrlink: 4549a880
date: 2021-06-22 09:45:46
---
1,安装deb文件
dpkg -i 文件名

2,解决vmware tools失效
sudo apt-get autoremove open-vm-tools	//卸载已有的工具
sudo apt-get install open-vm-tools		//安装工具open-vm-tools
sudo apt-get install open-vm-tools-desktop  //安装open-vm-tools-desktop
重启: init 0/reboot

3,在乌班图上显示隐藏文件
ctrl + h

4,window与liunx的shell脚本编码问题
修改编码:
vim 文件名
esc :
set ff=unix
esc : wq

查看编码
esc :
set ff

5,查找文件
find /name "文件名"

6,解压文件
unzip 文件
压缩文件
zip -r 路径和文件夹名 打包后存放的目录

7,进程
查看进程：ps -ef | grep 文件名
杀死进程：kill -9 id

8,shell文件运行命令
chmod +x ./auto_download.sh && ./auto_download.sh

9,定时器
cat /etc/crontab
---
title: Linux的使用
comments: true
copyright: true
tags:
  - Linux
  - Ubuntu
categories: Linux
abbrlink: 4549a880
date: 2021-06-22 09:45:46
---

1,安装dep文件

dpkg -i 文件名



2,解决vmware tools失效

sudo apt-get autoremove open-vm-tools	//卸载已有的工具
sudo apt-get install open-vm-tools		//安装工具open-vm-tools
sudo apt-get install open-vm-tools-desktop  //安装open-vm-tools-desktop

重启: init 0/reboot



3,在乌班图上显示隐藏文件

ctrl + h




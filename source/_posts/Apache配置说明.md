---
title: Apache配置说明
comments: true
copyright: true
tags:
  - Apache
categories: Apache
abbrlink: 7e84e351
date: 2021-06-22 11:36:22
---

1,运行php
运行php文件: php.exe的目录下    php.exe -f "php文件路径和文件名.php"
运行php代码: php.exe的目录下     php.exe -r "echo 'hello world' ; $i = 1; $i++;echo $i;"

2,原始代码
<?php	#起始标记
echo "hello world";
for($i = 1; $i < 10;$i++){
	echo "<br /> $i";
}
?>	#结束标记(如果在Html中,使用,如果是单独文件可以不使用)

在Apache24的bin目录下
安装Apache
httpd -k install
开启Apache
httpd -k start
配置文件错误检查
httpd -t

Apache安装(搭建公共Web服务):
修改ServerRoot:Apache安装根目录:eg:"F:\server\Apache24"
DocumentRoot:htdocs根目录:eg:"F:\server\Apache24\htdocs"
Directory:htdocs根目录:eg:"F:\server\Apache24\htdocs"
ServerName:域名:eg:localhost

注释:
#或//表示单行注释
/*....*/表示多行注释


结束语句;

变量
变量以$符号开始

权限配置
在
F:\server\Apache24\conf\extra\httpd-vhosts.conf
中进行权限配置
<VirtualHost *:80>
    
    #配置虚拟主机.针对F:\server\Web
    DocumentRoot "F:\server\Web"
    ServerName www.myweb.com
    
    #权限配置
    <Directory "F:\server\Web">
        #允许所有人访问
        Require all granted
    
        #设置默认首页
        DirectoryIndex index.php
    </Directory>   

</VirtualHost>

<VirtualHost *:80>
    
    DocumentRoot "F:\server\Apache24\htdocs"
    ServerName localhost
    
    #权限配置
    <Directory "F:\server\Apache24\htdocs">
        #允许所有人访问
        Require all granted
    
        #设置默认首页
        DirectoryIndex index.php index.html
    </Directory>   

</VirtualHost>


ctrl + f:搜索
ctrl+f11:运行
ctrl + N:新建

修改文件:drivers ---> etc ---> hosts文件:添加路由地址
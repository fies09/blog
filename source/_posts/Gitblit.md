---
title: gitblit
comments: true
copyright: true
tags:
  - Gitblit
  - 版本管理工具
categories: 版本管理工具
abbrlink: c361dd8f
date: 2021-06-22 09:38:22
---

团队协作管理工具:

​	领歌:[leangoo](https://www.leangoo.com/kanban/board_list#/home/list"领歌:任务管理工具")

​    飞书:协同管理工具

​     飞秋:

​      钉钉:

Gitblit:

1,下载软件 [复制这段内容后打开百度网盘手机App，操作更方便哦](链接：https://pan.baidu.com/s/18rYwlyE4IUAHHfHogg7fRA 
"提取码：u0pc "
)
2,配置data下的default.properties文件
    ①server.httpPort:端口号设置
    ②server.httpBindInterface:设置服务器IP地址,本机IP
    ③server.httpsBindInterface:设置为localhost
3,保存
4,运行gitblit.cmd
5,打开IP+端口号

权限管理:
R:克隆,一般赋予测试人员
RW:推送,
RWC:推送,创建ref,
RWD:推送,创建删除ref,
RW+:一般赋予开发人员,推送,创建删除以及rewind ref

上传项目:
git bash
git init 
git remote add origin 版本库路径
git add 项目名
git commit -m "注释"
git push -u origin master
当上面的报错时执行下面这条:
git push -f origin master
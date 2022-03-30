---
title: Nodejs简单使用
comments: true
copyright: true
tags:
  - Nodejs
categories: Blog
abbrlink: 89b3a0ef
date: 2021-06-22 11:31:38
---

1,安装node.js 2,安装二进制文件exe文件 3,测试,进入exe所在目录 node --version 4,可以创建服务器, 在文件目录下输入:node server.js 在浏览器上运行:http://127.0.0.1:8888

5,检测npm是否安装 npm -v

6,使用npm命令安装模块 (有-g 全局安装,无-g本地安装) 区别: 本地:

1. 将安装包放在 ./node_modules 下（运行 npm 命令时所在的目录），如果没有 node_modules 目录，会在当前执行 npm 命令的目录下生成 node_modules 目录。
2. 可以通过 require() 来引入本地安装的包 npm install 模块名 全局:
3. 将安装包放在 /usr/local 下或者你 node 的安装目录。
4. 可以直接在命令行里使用。 npm install 模块名 -g

安装出错解决办法: npm config set proxy null

查看安装信息: npm list -g 查看某个模块的版本号 npm list 模块名

7,常用模块express npm install express

8,卸载常用命令 npm uninstall express

卸载后，你可以到 /node_modules/ 目录下查看包是否还存在，或者使用以下命令查看

更新模块:npm update express

搜索模块:npm search express

创建模块 npm init

注册用户:npm adduser

发布模块:npm publish

使用淘宝定制的 cnpm (gzip 压缩支持) 命令行工具代替默认的 npm:

npm install -g cnpm --registry=https://registry.npm.taobao.org

然后可以用cnpm install 模块名 下载模块
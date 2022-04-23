---
title: Hexo博客next主题的使用说明
comments: true
copyright: true
tags:
  - Hexo
  - Next
categories: Blog
abbrlink: 78fbf3e4
date: 2021-06-10 20:08:17
---

[参考文档](https://zhuanlan.zhihu.com/p/30836436)
[参考文档2](https://blog.csdn.net/qq_35977139/article/details/113764322)
[参考文档3](https://blog.csdn.net/wbsu2004/article/details/122661116)

一,环境Nodejs + windows
[下载nodejs](https://nodejs.org/en/download/)

二, 安装,使用Hexo
①从淘宝镜像下载cnpm:
npm install -g cnpm --registry=https://registry.npm.taobao.org

下载hexo模块,

cnpm install -g hexo-cli

②建立博客文件夹
mkdir blog

③生成博客文件
cd blog 

hexo init

④下载next主题

git clone https://github.com/litten/hexo-theme-next.git themes/next

⑤在github上建立仓库github名.github.io

⑥修改配置信息
在_config.yml下修改:
105行左右:
type: git
repo: git仓库地址
branch: master

⑦当配置完成后执行以下命令:

hexo clean && hexo g && hexo s

⑧安装git相关模块
npm install --save hexo-deployer-git

hexo clean && hexo g && hexo d

安装插件两种方式
①:npm install hexo-wordcount --save
②淘宝镜像方式安装:
cnpm install hexo-wordcount --save

安装的相关模块:

rss:  npm install hexo-generator-feed --save

search: npm install hexo-generator-searchdb --save

wordcount: npm i --save hexo-wordcount

gulp: npm install gulp -g

gulp插件: 

npm install gulp-minify-css --save

npm install gulp-uglify --save
npm install gulp-htmlmin --save
npm install gulp-htmlclean --save
npm install gulp-imagemin --save

宠物:  npm install -save hexo-helper-live2d

响应模型: npm install live2d-widget-model-wanko

symbol-count-time: npm install hexo-symbols-count-time --save



分类含子集形式:

​	categories: [Python,数据分析]

多层分类:

categories:

--  数据分析

--  Python

tags: [Python,数据分析]



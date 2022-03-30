---
title: Hexo博客yilia主题的使用说明
comments: true
copyright: true
tags:
  - Yilia
  - Hexo
categories: 
 - Blog
abbrlink: 31aab21a
date: 2021-06-11 12:39:52
---

[参考链接](https://www.yansheng.xyz/)

**Hexo的使用说明**
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

④下载yilia主题

git clone https://github.com/litten/hexo-theme-yilia.git themes/yilia

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

上传到github:
hexo d

二,相关模块页面的修改
①新建标签,分类等的方式,标签在文章中可以设置多个
hexo new page categories
修改index.md格式
title: 分类
date: 2021-05-24 12:04:07
type: "categories"

新建文章: hexo new post "文章名"
新建页面(标签页,分类页): hexo new page "categories"
新建草稿页: hexo new draft "文章名"

三,安装插件两种方式
①:npm install hexo-wordcount --save
②淘宝镜像方式安装:
cnpm install hexo-wordcount --save



yilia模块下载总结:

```
npm install hexo-generator-search --save
```

```
npm install hexo-generator-feed
```

```
npm install hexo-abbrlink --save
```

```
npm install hexo-neat --save
```



hexo常见错误及解决方法:

问题1,

error：spawn failed...

fatal: cannot lock ref 'HEAD': unable to resolve reference HEAD: Invalid argument error: src refspec

解决方法:

​	1, 删除`.deploy_git`文件夹

​    2, git config --global core.autocrlf false

​	3, 执行 

	hexo clean && hexo g 
	hexo d

问题2, 打开页面出现 Cannot GET / 	

解决方法:

​	在public目录下寻找index.html是否存在,

​	不存在执行hexo c，hexo g,再次查看index.html是否生成

​	执行完后index.html仍不存在，执行npm audit fix，查看是否少了什么组件，

  	一般情况下执行npm install hexo-generator-index即可

​	执行完后再次执行hexo c，hexo g重新生成静态文件



隐藏内容在文章中添加:<!--more-->标签来隐藏下面的内容



当hexo d出现OpenSSL SSL_read: Connection was reset, errno 10054问题时,执行以下命令

git config --global http.sslVerify "false"



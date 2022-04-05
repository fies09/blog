---
title: restful接口学习使用api
comments: true
copyright: true
abbrlink: 655eb243
date: 2022-04-05 16:43:35
tags: 
- Web开发
- restful
categories: Web开发
---



1,资源与URI和URL

1)资源,resources,网络上的具体信息

2)URI,uniform resources identifier,统一资源标识符,用来唯一的标识一个资源

3)URL,uniform resources locator,统一资源定位符,用来定位某个特定资源



http://www.jikexueyuan.com/course/179.html



测试网站: open.weibo.com

打开微博api



测试网站: pro.jsonlint.com



2,表现层,representaion

纯文本: Python Restful API开发

HTML:

<head>
  <title>Python RESTful API开发</title>
</head>

JSON:

{

"text": "Python Restful API开发"

}



3,状态转移

1)HTTP协议,是一个无状态的协议

2)GET,POST,PUT,DELETE

3)让我们来看一个RESTful的请求

curl -x GET https://api.weibo.com/2/users/show.json



4,RESTful架构设计6原则

1)Uniform Interface

2)Stateless

3)Cacheable

4)Client-server

5)Layered System

6)Code on Demand



flask文档网站: 

Dormousehole.readthedocs.org/en/lastest/index.html

Flask.pocoo.org/extensions/




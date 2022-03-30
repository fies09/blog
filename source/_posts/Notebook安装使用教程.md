---
title: Notebook安装使用教程
copyright: true
tags:
  - Jupyter Notebook
  - Python
categories: Python
abbrlink: d9a032e2
date: 2021-06-10 16:51:26
---

1,安装jupyter模块:
pip install jupyter

2,生成配置文件
jupyter notebook --generate-config

不同系统的目录:

Windows：C:UsersUSERNAME.jupyterjupyter_notebook_config.py
OS X：/Users/USERNAME/.jupyter/jupyter_notebook_config.py
Linux：/home/USERNAME/.jupyter/jupyter_notebook_config.py

root用户执行以下命令:
jupyter notebook --generate-config --allow-config

3,生成密码:
jupyter notebook password

4,在jupyter_notebook_config下修改相关配置:
c.NotebookApp.ip='*'
c.NotebookApp.password = u'sha:ce...刚才复制的那个密文'
c.NotebookApp.open_browser = False
c.NotebookApp.port =8888 #可自行指定一个端口, 访问时使用该端口

5,启动
jupyter notebook

root用户执行以下命令:
jupyter notebook --allow-root
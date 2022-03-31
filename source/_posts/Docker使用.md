---
title: Docker使用
author: Mr.Fan
abbrlink: cd988ed5
date: 2022-03-31 14:23:24
tags:
---
docker常用命令

	安装:apt-get/yum install docekr
	查看服务状态:systemctl status docker
	启动服务:systemctl start docker
	拉取镜像:docker pull centos/ubuntu
	进入镜像:docker run -it ubuntu /bin/bash
	退出:exit
	查看所有容器:docker ps -a
	启动容器:docker start id
	进入容器:docker exec -it id bash
	重启:docker restart id
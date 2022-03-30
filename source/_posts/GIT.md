---
title: GIT
comments: true
copyright: true
tags:
  - GIT
  - 版本管理工具
categories: 版本管理工具
abbrlink: c72923f6
---

一,git

Git使用:

1,注册账号

https://github.com/

填写用户名.E-mail,密码进行注册

2,生成SSH KEY

下载git,在指定文件夹下打开git bush

配置全局的用户名和邮箱

git config --global user.name "注册的用户名"

git config --global user.email "注册的邮箱"

#取消配置

#git config --global  --unset user.name "用户名"
#git config --global  --unset user.email "邮箱"

生成SSH KEY命令:ssh-keygen -t rsa -C "注册的邮箱"

默认回车

3,将.ssh下的id_rsa.pub内容复制到github中

用户中心--->settings--->左侧的SSH KEYS,权限RW,点击添加按钮

4,文件上传

在指定目录下打开git Bash here

第一次上传,通过git init将此文件夹变为可管理仓库

连接远程服务器:在github中创建repositories

#上传到git库:git add 项目名

#git commit -m "注释":提交

上面的合并为一步:git commit am "注释"

git remote add origin 远程库地址

上传到服务器

git push -u origin master

#git push -f origin master :当上传失败时改为这条命令

git status:查看工作区状态

5,文件下载

git clone 服务器地址

文件编辑操作

git add :暂存区,对文件进行修改,删除等

git rm 文件名:删除文件

git rm -f 文件名:强制删除

git commit :工作区

撤销提交:git reset HEAD^1

二,git在pycharm中的使用

上传:

在settings中的version control找到github,用户名密码连接.
当账号密码连接失败时采用token连接(在github建立)

在VCS中调用Version control分享项目到github

[报错时解决办法](https://blog.csdn.net/lai1170137052/article/details/79377037)

1,项目右键:git ---> repository -- remotes(删除地址重新分享)



下载
在vcs下选择check out 服务器地址进行 项目下载

三,[tortoiseGIT使用](https://blog.csdn.net/weixin_30532759/article/details/96394002?utm_medium=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.edu_weight&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.edu_weight)
tortoisegit记住密码:settings ---> Git ---> Edit global.gitconfig 
[user]
  name = 注册用户名
  email = 注册邮箱
[credential]
  helper = store

tortoisegit上传文件时的几个状态:(在日志中)
Unknown:新增的文件,不在版本库
Added:新增的文件,在版本库
Modified:文件修改,在版本库
Missing:文件被删除,在版本库

tortoisegit上传文件:
① 创建一个本地文件夹
在tortoisegit中点击git create reposity here ---> 点击OK
②点击git commit -> "master"
**必填message
勾选要提交的文件-->点击OK
③当文件内容被修改时,重复第二步
④查看日志在Tortoisegit中查找show log
⑤,将diamante上传到云端,右键 ---> tortoisegit --> push ---> Manage ---> git ---> Remote (填下Remote,URL,Push URL,其中URL和Push URL是同一地址)
⑥,输入用户名,密码,等待成功

分支主要是找回之前的代码,以及修改,删除等相关操作
①右键 ---> tortoisegit ---> Create Branch(填写名字,选中Switch to new branch)
②提交到新的分支中,备注说明,根据上述第五,六步上传到云端
③,回到之前版本,右键 ---> tortoisegit ---> Switch/Checkout ---> 在Branch中选择master,点击OK回到之前版本

分支合并
①通过Switch/Checkout切换到主分支
②找到Merge按钮点击,在Branch中选择要合并的分支副分支,然后点击OK
③通过Commit和Push将合并上传到中心服务器
④通过CheckOut/Switch点击Switch to区域中Branch后的更多按钮,打开分支列表对话框,右键点击要删除的分支,单击delete branch进行删除
⑤分支删除后只剩下主分支,本地分支和远程分支并无从属关系

总结:上传主要是add,commit,push

Aone：git教程
git全局设置：
git config --global user.name '樊勇'
git config --global user.email 'fy01304574@alibaba-inc.com'

当本地没有时克隆仓库：
git clone 地址
cd 目录名
touch README.md 
git add README.md
git commit -m ''
git push -u origin master

对于已存在的文件夹或仓库
cd existing_floder
git init 
git remote add origin 版本库地址
git add .
git commit -m ''
git push -u origin master

aone代码处理教程：
代码合并通过新建评审实现
git stash
git checkout master
git pull
git checkout fy01304574
git merge master
git stash pop
当第一次提交时：
git remote add origin 代码库地址
git add .
git commit -m ""
git push -u origin fy01304574



git切换分支:

隐藏当前分支

git stash

切换到主分支

 git checkout master

拉取文件

git pull

切换到自己分支

git checkout 分支名

合并分支到主分支

git merge master

当文件修改完成后进行stash pop继续之前的操作

git stash pop 

当第一次提交时执行

git remote add origin 代码库地址

git add .

git commit -m "注释"

git push -u origin 分支名



 


---
title: Python面试题2
comments: true
copyright: true
tags:
  - Python
  - 面试题
categories:
  - Python
abbrlink: 72f963fe
date: 2021-06-22 10:01:59
---

[面试题参考链接](https://blog.csdn.net/weixin_40318474/article/details/103744809)

1,Python的GIL?
答:GIL是Python的全局解释器锁,同一进程中加入有多个线程运行,一个线程在运行 Python程序的时候会霸占python解释器,也就是加了一把锁(即GIL),使该进程内其他线程无法运行,等该线程运行完成后其他 线程才能运行.

2,with方法打开处理文件帮助我们做了什么?
答:在处理完文件之后,会帮助我们自动关闭文件

3,数据表student有id,name,score,city字段,其中name中的名字可有重复,需消除重复行,请写sql语句
答:select distinct name from student;

4,match和search的区别?
match()函数检查re是不是在String的开始位置匹配,
只有在开始位置匹配成功才返回,不是在开始位置就返回None
search()全局查找匹配,会扫描整个字符串并返回第一个成功的匹配

5,分类算法有:
NBC算法
LR算法
SVM算法
ID3算法
C4.5 算法
C5.0算法
KNN 算法
ANN 算法

6,linux命令?
grep:查找文件中符合条件的字符串		 
awk:处理文本文件的语言,强大额文本处理工具 		
sed:利用脚本处理文本文件		
chmod:控制用户对文本的权限命令
lsof:列出当前系统打开文件的工具			
ping:测试与目标主机的连通性		
less:浏览文件		
ftp:设置系统文件相关功能
ifconfig:用来查看或配置网络设备		
ps:	进程查看命令		
mount:挂载命令

7,将字符转为字典?
答:
1,通过json进行转换
2,通过eval进行转换
3,通过literal_eval进行转换

8,可变数据类型和不可变数据类型的原理?
不可变类型:数值型,字符串型string和元组tuple
如果变量的值发生了变化,相当于新建了一个对象,而对于相同值的对象,在内存中只有一个地址


可变类型:列表list和字典dict
如果对对象进行了append,+=等这些操作之后,只是改变了变量的值,而不会新建一个对象,变量引用的对象的地址也不会发生变化,不过相对于相同值的不同对象,在内存中则会存在不同的对象,即每个对象都有自己的地址

9,正则re.complie作用
答:将正则表达式编译成一个对象,加快速度,并重复使用

用于编译正则表达式,生成一个pattern对象,返回的是一匹配对象,一般情况需要和findall(),search(),match()搭配使用
和findall()一起使用返回一个列表
和match()使用返回一个class,str,tuple
和search()搭配使用和match返回的类型差不多

10 a= (1,)  b = (1) c = ("1")分别表示什么类型的数据
答:元组,整型,字符串类型

11,用python删除文件和用linux删除文件方法
答:
python:
import os
os.remove(文件名)
linux:
rm 文件名

12,数据库优化查询方法
答:外键,索引,联合查询,选择特定字段等等

13,请列出你会的任意一种统计图(条形图,折线图等)绘制的开源软件,第三方也行
答:pychart  matplotlib

14,正则表达式匹配中,(.)和(.?)匹配区别
答:'.'是匹配除了'\n'之外的任意一个字符
'?'是匹配前一个字符1次或0次

(.*)是贪婪匹配,会把满足正则的尽可能多的往后匹配
(.*?)是非贪婪匹配,会把满足正则的尽可能少匹配

15,举例说明异常模块中try except else finally 的相关意义
答:try...except...else没有铺获到异常,执行else语句
try...except...finally不管有没有铺获到异常,都执行finally语句

16,python中交换两个数值
a,b = b,a

17,写5条常用sql语句
答:show databases;
show tables;
desc tb_name;
select * from tb_name
delete from tb_name where id = 5;
update tb_name set name='xue',age=23 where id = 5;

18,[1,2,3]+[4,5,6]的结果是多少
答:[1,2,3,4,5,6]

19,简述mysql和redis区别
答:redis:内存型非关系数据库,数据保存在内存中,速度快
    mysql:关系型数据库,数据保存在磁盘中,速度相对慢

20,遇到bug如何处理
答:1,细节上错误,通过print()打印,能执行到print()说明一般上面的代码没什么问题,分段检测程序是否有问题,如果是js的话使用alert或console.log
2,如果涉及一些第三方框架的话,查官方文档或技术博客
3,对于bug的管理和归类总结

21,python字典和json字符串相互转化方法
json.dumps()将字典转化为json字符串,
json.loads()将json字符串转化为字典

22,MyISAM和InnoDB区别:
答:
1,存储结构,
2,存储空间
3,事物支持
4,CURD支持
5,外键
[区别详解](http://blog.itpub.net/21374452/viewspace-2136284/)

23,,int("1.4"),int(1.4)输出结果
int('1.4')报错
int(1.4)输出1

24,列举3条以上PEP8编码规则
答:①顶级定义之间空两格,比如函数或类定义
②方法定义,类定义与第一个方法之间,都应该空一行
③三引号进行注释
④pycharm用4个空格缩进代码

25,正则表达式匹配第一个URL
答:findall结果无需加group(),search需要加group()提取

26,简述乐观锁和悲观锁
答:悲观锁,就是很悲观,每次拿数据的时候都认为别人会修改,所以每次在拿数据的时候都会上锁,这样别人想拿这个数据就会block直到它拿到锁

乐观锁:很乐观,每次拿数据都认为别人不会修改,所以不会上锁

27,python传参数是传值还是传址
答:python中的函数参数是引用传递(不是值传递),对于不可变数据类型(数字,字符串,元组),因变量不能修改,所以运算不会影响到变量自身,而对于可变数据类型(列表,字典)来说,函数体运算可能会更改传入的参数变量

28,C:\Users\re-wu.junya\Desktop>python 1.py 22 33 命令行启动程序并传参,print(sys.argv)会输出什么数据?
['1.py', '22', '33']

29,简述同源策略
答:同源策略需同时满足以下三点要求
    1,协议相同
    2,域名相同
    3,端口相同
ex:
http:www.test.com与https:www.test.com 协议不同
http:www.test.com与http:www.admin.com 域名不同
http:www.test.com 与http:www.test.com:8081 端口不同
只要不满足其中任意一个要求,就不符合同源策略,就会出现"跨域"

30,简述any()和all()方法
答:any():只要迭代器中有一个元素为真就为真,
all():迭代器中所有的判断项返回都是真,结果才是真
python中为假的元素:0,空字符串,空列表,空元组,None,False

31,列出几种魔法方法并简要介绍用途
__init__: 对象初始化的方法 
__del__: 删除对象执行的方法
__str__: 当用print输出对象的时候，如果自己定义了__str__(self)方法，就会打印从这个方法中return的数据
__new__: 创建对象会执行的方法，单例模式会用到

32,列出常见mysql数据存储引擎
InnoDB:支持事物处理,支持外键,支持崩溃修复能力和并发控制.
MyISAM:插入数据快,空间和内存使用比较低,
MEMORY:所有数据都在内存中,数据的处理速度快.但是安全性不高

33,常见转态码和意义
200 OK: 请求正常处理完毕
204 No Content: 请求成功处理，没有实体的主体返回
206 Partial Content: GET范围请求已成功处理
301 Moved Permanently: 永久重定向，资源已永久分配新URI
302 Found: 临时重定向，资源已临时分配新URI
303 See Other: 临时重定向，期望使用GET定向获取
304 Not Modified: 发送的附带条件请求未满足
307 Temporary Redirect: 临时重定向，POST不会变成GET
400 Bad Request: 请求报文语法错误或者参数错误
401 Unauthorized: 需要通过HTTP认证，或认证失败
403 Forbidden: 请求资源被拒绝
404 Not Found: 无法找到请求资源(服务器无理由拒绝)
500 Internal Server Error: 服务器故障或Web应用故障
503 Service Unavailable: 服务器超负载或停机维护 

34,分别从前端,后端,数据库阐述web项目的性能优化
前端优化:
①,减少http请求,例如制作精灵图
②,html和CSS放在页面上部,javascript放在页面下部

后端优化:
①,缓存存储读写次数高,变化少的数据,
②,异步方式,如果有耗时操作,可采用异步,如celery
③,代码优化,避免循环和判断次数太多,如果多个if else判断,优先判断最有可能发生的情况

数据库优化:
①,如有条件,数据可以存放于redis,读取速度快,
②,简历索引,外键等

35:map函数
map用法:
①,定义一个函数,
def square(x):  #计算平方数
    return x ** 2
map(函数名(square),一个或多个序列(列表))
#计算列表中的元素平方

②,使用lambda匿名函数
map(lambda x: x **2 ,序列(列表))
#计算列表中的元素平方

③,提供了两个列表.对相同位置的数据进行相加
map(lambda x,y:x+y,[1,3,1,4,5,2,1],[1,0,1,0,1,0,9])

36,软件开发的设计模式?
[设计模式](https://www.cnblogs.com/tangkaishou/p/9246353.html)
①创建型模式
②结构型模式
③行为型模式

37,del,pop和remove之间的不同区别
del:按指定索引值删除元素
remove:默认第一次出现的元素
pop:默认删除最后一个元素或者根据索引值删除索引

38,python中的异步关键字
异步编程模块:asyncio



39，python语言?
答：Python是一种面向对象的,交互式的,解释型的计算机程序设计语言,Python的设计具有高可读性,他使用英语关键字而非标点符号,语法结构简单,它的特点有:

①Python是动态类型的,这意味着不需要在声明变量时指定类型,

②Python是面向对象语言,所有允许定义类并且可以继承和组合.

③虽然Python运行比较慢.但是允许使用c扩展写程序.

④python应用场景比较广,Web开发,数据科学,人工智能等 



40, Python里如何实现tuple和list的转换?
答:直接使用tuple和list函数


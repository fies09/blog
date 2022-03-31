title: Python基础模块
copyright: true
tags:
  - Python
categories: Python
abbrlink: 9d100b5b
date: 2021-06-10 12:47:36
---
1.必装模块pypiwin32  wheel:主要是为了装whl文件

2,pyinstaller:将python文件转化为exe文件
进入py文件目录下:cmd --->pyinstaller -F 文件名.py

3,虚拟机教程
安装:pip install -U virtualenv
创建:virtualenv 环境名
进入虚拟环境:script
启动:activate

4,pip文件的配置(目的,提高下载速率)
①
pip文件的配置
    # 在用户Administrator下, 提高第三方模块的下载速率
    # C:\Users\Administrator\pip\pip.ini
内容:
[global]
index-url=https://pypi.tuna.tsinghua.edu.cn/simple

②pip 安装包超时使用以下方法:
pip install --index-url https://pypi.tuna.tsinghua.edu.cn/simple/ 包名

③pip install tensorflow==2.3.0  -i https://pypi.doubanio.com/simple


5, pyc文件的编译
python -m py_compile 文件名.py
pyo文件的编译:
python -O -m py_compile 文件名.py

6,Beautiful Soup:
**用于数据收集的Python库:**
这个是一个HTML和XML解析器,可用于从web页面中提取数据,这个过程叫做网页抓取

7,Scrapy:这是一个用于大规模网页抓取的框架,提供所有需要的工具有效的从网站中抓取数据,以使用者偏好的结构和格式存储数据

8,Selenium:这是一个倍受欢迎的自动化浏览器工具,在业界常用于测试,但对于网页抓取也非常方便

9,**用于数据清理和数据操作的Python库
*
pandas:主要用于数据操作和数据分析

10:numpy:这是一个开源库,引入了支持大型多维数组和矩阵的函数

11,PyOD:一个全面的,可伸缩的Python工具包,用于检测外围对象

12,**用于数据可视化的Python库**
Matplotlib:这是Python中最流行的数据可视化库,允许生成和构建各种各样的图

13,Seaborn:另一个基于Matplotlib的绘图库为绘制有吸引力的图像而提供高级接口


14,**用于建模的Python库**
Scikit-learn:它是Python建模中的佼佼者,支持机器学习中执行的不同操作,如分类,回归,聚类和模型选择等

15,Tensorflow:这是一个流行的深度学习库,提供模型构建,机器学习生产及强大的实验工具和库

16,**用于数据解释型的Python库**
LIME:这是一种算法(库),可以解释任何分类器或回归量的预测

17,H2O:通过可视化提供机器学习可解释性(MLI)说明建模结构和模型中特征的影响

18,**用于音频处理的Python库:**
LibROSA:一个用于音乐和音频分析的Python库,提供了创建音乐信息检索系统所需的构建块

19,pyAudioAnalysis:一个用于音频特征提取,分类和分段的Python库,涵盖广泛的音频分析任务

20,**用于图像处理的Python库**
OpenCV-Python:用于图像处理的Python API,主要用于解决计算机视觉问题

21,Scikit-image:可执行多个不同图像处理任务的算法集合,用于图像分割,几何变换,色彩空间操作等等

22,Pillow:它是从Python Imaging Library 中派生出来的,可以执行逐像素操作掩模和透明处理等等

**用于部署的Python库**
23,django:Python web框架的先驱,大而全,功能及其强大,非常适合企业级网站的开发

24,flask:一个用Python编写的Web框架,小巧,灵活,非常适用于小型网站

25,mysql数据库模块的安装
pip install mysqlclient==1.3.12

26, keras(目前已被tensorflow收购)

pip install keras

27,pytorch

下载whl文件,在文件目录下:pip  install 文件名
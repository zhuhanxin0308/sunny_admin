## sunny v1.1更新说明
1、 菜单列表增加了树形结构

2、 修改了一些不合适的按钮布局

3、 增加了一些菜单图标

4、 增加一个了极简博客演示(/public/index/）模块

5、 后台增加日志管理及日志的图表分析功能，可以统计网站访客

6、 增加了内容管理功能，可以对博客进行管理

7、 已经通过composer安装了phpmailer,邮件发送插件，引入即可使用，目前还没有写演示代码

8、 新增功能，当开启debug 时，即进入开发模式，可以更改设置后台菜单，当关闭debug时，将无法对菜单进行操作

>  注意，  原有的数据库是用来支撑程序基本功能运行的必要条件，你可以在原来有的表上增加字段，或者增加表，切记不可删除原有字段，否则可能导致程序无法正常运行
# 界面展示
<img src="http://mymyjd.cn/images/1.png" style="width:100%;"><br>
<img src="http://mymyjd.cn/images/2.png" style="width:100%;"><br>
<img src="http://mymyjd.cn/images/3.png" style="width:100%;"><br>

# 演示地址
<a href="http://mymyjd.cn/demo/public/web/start">后台演示</a><br>
<a href="http://mymyjd.cn/demo/publict">前台极简博客demo演示</a><br>
# 官方网站
<a href="http://sunny.mymyjd.cn/">sunny前后台分离式 后台管理系统开发框架</a><br>
# qq讨论群组
<a href="http://shang.qq.com/wpa/qunwpa?idkey=66812d96988dced770311f01758fc942fd495078a250b1c59d37da2938232eef" >点我加群</a>
# 社区支持
<a href="http://bbs.mymyjd.cn">盟友基地社区</a><br>
# 作者博客
<a href="http://blues.mymyjd.cn/">作者博客</a><br>
# 其他网站
<a href="http://mymyjd.cn/res">资源库</a><br>

# sunny1.0
一个开源的、前后端分离的、后台管理系统开发框架--后端基于thinkphp5.1，前端在这里只是演示使用的layui，事实上你可以使用任何技术搭建前端如（vue ，react ，甚至bootstrap 等），前后端交互全部基于接口

实现前后端完全分离
让专业的人做专业的事

## 后台后端部署
#首先你需要有一个php开发环境，满足以下要求

》安装服务

1，php 版本大于等于5，6

2，mysql服务 。建议5.7以上版本

3, httpd服务 ，建议apache2.4及其以上

》配置服务

#开启apache rewrite等等更多配置参考tp手册

>记得配置好环境后，修改public目录下的.haccess文件的重写规则
1>liunx
默认配置文件为linux
如下
<pre>
<IfModule mod_rewrite.c> 
Options +FollowSymlinks -Multiviews
RewriteEngine on
RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^(.*)$ index.php/$1 [QSA,PT,L]
</IfModule>
</pre>

2>window
<pre>
<IfModule mod_rewrite.c>
Options +FollowSymlinks -Multiviews 
RewriteEngine on
RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} !-f 
RewriteRule ^(.*)$ index.php?s=$1 [QSA,PT,L]
</IfModule>
</pre>
至此环境配置完成了
##下面创建数据库
新建数据库
导入blue.sql
##接下来就是项目配置了，详情参考tp手册

修改config/database.php 配置你的数据库
修改public/index.php
如果是前后端跨域
请修改
Access-Control-Allow-Origin 这一项
将值设置成前端页面z所在的域名

把项目放到你的接口服务器目录中（一般www下例如www/项目名字/[...]  或者直接放到www/[application ,config ...]）

后台配置完成

>注意此为服务器后台接口项目，一般不用直接访问，当然你也可以访问public目录，会有一个欢迎界面

>你可以选择将域名指向public目录也可以不用指向public目录(即通过域名直接访问或者通过域名/项目名/public访问) 无论使用那种方式都不需要做任何修改或者配置


>开发时修改config/app.config  app_debug => true 开启调试模式
>正式上线记得关闭调试模式 app_debug => false
>注意前端开发请参考layui 开发手册，后端开发请参考thinkphp5.1开发手册
>下面是tp5官网的部分内容
## 后台后端目录结构
[参考thinkphp5.1开发手册]
结构如下：

~~~
sunny  WEB部署目录（或者子目录）
├─application           应用目录
│  ├─common             公共模块目录（可以更改）
│  ├─module_name        模块目录
│  │  ├─common.php      模块函数文件
│  │  ├─controller      控制器目录
│  │  ├─model           模型目录
│  │  ├─view            视图目录
│  │  └─ ...            更多类库目录
│  │
│  ├─command.php        命令行定义文件
│  ├─common.php         公共函数文件
│  └─tags.php           应用行为扩展定义文件
│
├─config                应用配置目录
│  ├─module_name        模块配置目录
│  │  ├─database.php    数据库配置
│  │  ├─cache           缓存配置
│  │  └─ ...            
│  │
│  ├─app.php            应用配置
│  ├─cache.php          缓存配置
│  ├─cookie.php         Cookie配置
│  ├─database.php       数据库配置
│  ├─log.php            日志配置
│  ├─session.php        Session配置
│  ├─template.php       模板引擎配置
│  └─trace.php          Trace配置
│
├─route                 路由定义目录
│  ├─route.php          路由定义
│  └─...                更多
│
├─public                WEB目录（对外访问目录）
│  ├─index.php          入口文件
│  ├─router.php         快速测试文件
│  └─.htaccess          用于apache的重写
│
├─thinkphp              框架系统目录
│  ├─lang               语言文件目录
│  ├─library            框架类库目录
│  │  ├─think           Think类库包目录
│  │  └─traits          系统Trait目录
│  │
│  ├─tpl                系统模板目录
│  ├─base.php           基础定义文件
│  ├─console.php        控制台入口文件
│  ├─convention.php     框架惯例配置文件
│  ├─helper.php         助手函数文件
│  ├─phpunit.xml        phpunit配置文件
│  └─start.php          框架入口文件
│
├─extend                扩展类库目录
├─runtime               应用的运行时目录（可写，可定制）
├─vendor                第三方类库目录（Composer依赖库）
├─build.php             自动生成定义文件（参考）
├─composer.json         composer 定义文件
├─LICENSE.txt           授权说明文件
├─README.md             README 文件
├─think                 命令行入口文件
~~~

> router.php用于php自带webserver支持，可用于快速测试
> 切换到public目录后，启动命令：php -S localhost:8888  router.php
> 上面的目录结构和名称是可以改变的，这取决于你的入口文件和配置参数。



## 命名规范

`ThinkPHP5`遵循PSR-2命名规范和PSR-4自动加载规范，并且注意如下规范：

### 目录和文件

*   目录不强制规范，驼峰和小写+下划线模式均支持；
*   类库、函数文件统一以`.php`为后缀；
*   类的文件名均以命名空间定义，并且命名空间的路径和类库文件所在路径一致；
*   类名和类文件名保持一致，统一采用驼峰法命名（首字母大写）；

### 函数和类、属性命名
*   类的命名采用驼峰法，并且首字母大写，例如 `User`、`UserType`，默认不需要添加后缀，例如`UserController`应该直接命名为`User`；
*   函数的命名使用小写字母和下划线（小写字母开头）的方式，例如 `get_client_ip`；
*   方法的命名使用驼峰法，并且首字母小写，例如 `getUserName`；
*   属性的命名使用驼峰法，并且首字母小写，例如 `tableName`、`instance`；
*   以双下划线“__”打头的函数或方法作为魔法方法，例如 `__call` 和 `__autoload`；

### 常量和配置
*   常量以大写字母和下划线命名，例如 `APP_PATH`和 `THINK_PATH`；
*   配置参数以小写字母和下划线命名，例如 `url_route_on` 和`url_convert`；

### 数据表和字段
*   数据表和字段采用小写加下划线方式命名，并注意字段名不要以下划线开头，例如 `think_user` 表和 `user_name`字段，不建议使用驼峰和中文作为数据表字段命名。



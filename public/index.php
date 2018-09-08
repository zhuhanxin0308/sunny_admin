<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// [ 应用入口文件 ]
namespace think;
use think\facade\Hook;

// 加载基础文件

require __DIR__ . '/../thinkphp/base.php';
// 跨域 session共享需要的代码， 
header("Access-Control-Allow-Credentials:true");
header("Access-Control-Allow-Origin:http://192.168.194.138");//注意修改这里 填写你的前端页面的域名
header("Access-Control-Max-Age:3600");
header("Access-Control-Allow-Headers:DNT,X-Mx-ReqToken,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Authorization,SessionToken");
header('Access-Control-Allow-Methods: GET, POST, PUT,DELETE');
//跨域session 共享 代码结束

// 支持事先使用静态方法设置Request对象和Config对象
// 执行应用并响应


Container::get('app')->run()->send();


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
header("Access-Control-Allow-Credentials:true");
header("Access-Control-Allow-Origin:http://192.168.194.138");
header("Access-Control-Allow-Methods:*");
header("Access-Control-Max-Age:3600");
header("Access-Control-Allow-Headers:DNT,X-Mx-ReqToken,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Authorization,SessionToken");

//header('Access-Control-Allow-Origin: http://192.168.194.138');
//header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
//header('Content-type:application/json');
//header("Access-Control-Max-Age", "3600");
header('Access-Control-Allow-Methods: GET, POST, PUT,DELETE');
// 支持事先使用静态方法设置Request对象和Config对象
// 执行应用并响应

Container::get('app')->run()->send();


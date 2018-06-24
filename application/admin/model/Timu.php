<?php
namespace app\admin\model;
use think\Model;
class Timu extends Model{
	

// 设置当前模型对应的完整数据表名称
protected $table = 'timu';
// 设置当前模型的数据库连接
protected $connection = [
	// 数据库类型
	'type' => 'mysql',
	// 服务器地址
	'hostname' => '127.0.0.1',
	// 数据库名
	'database' => '0323_test',
	// 数据库用户名
	'username' => 'root',
	// 数据库密码
	'password' => 'admin',
	// 数据库编码默认采用utf8
	'charset' => 'utf8',
	// 数据库表前缀
	'prefix' => '',
	// 数据库调试模式
	'debug' => false,
];

}

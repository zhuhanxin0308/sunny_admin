<?php
namespace app\admin\validate;
use think\Validate;
class Email extends Validate{
	protected $rule = [
		'smtp_server' => 'require',
		'port'		=> 'require|number',
		'send_email'	=> 'require',
		
	];
	protected $message =[
		'smtp_server.require' => '邮件服务器不能为空',
		'port.require' 		  => '端口号不能为空',
		'port.number'		  => '端口号必须为数字',
		'send_email.require'  => '发送邮箱名字不能为空',

	];
}
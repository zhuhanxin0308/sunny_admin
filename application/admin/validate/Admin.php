<?php
namespace app\admin\validate;

use think\Validate;

class Admin extends Validate
{
    protected $rule =   [
        'username'  => 'require|max:25|min:5|chsDash',
        'password'  => 'require|max:20|min:5|alphaDash',
        'role'      =>  'number',  
    ];
    
    protected $message  =   [
        'username.require'  => '名称必须',
        'username.max'      => '名称最多不能超过25个字符',
        'username.min'      => '名称最少5个字符',
        'password.require'  => '密码不能为空',
        'password.max'      => '密码最多不能超过20个字符',
        'password.min'		=> '密码最少5个字符',
        'role.number'       => '权限必须为数字'
    ];
    
}
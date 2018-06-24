<?php
namespace app\admin\validate;

use think\Validate;

class Web extends Validate
{
    protected $rule =   [
        'sitename'  => 'require|max:50|min:2',
        'domain'  => 'require|url',
        'max_upload_size'      =>  'require|number',  
    ];
    
    protected $message  =   [
        'sitename.require'  => '网站名称必须',
        'sitename.max'      => '网站名称最多不能超过50个字符',
        'sitename.min'      => '网站名称最少5个字符',
        'domain.require'  => '域名不能为空',
        'max_upload_size'   =>'最大上传设置值不能为空',
        'max_upload_size.number'       => '必须为数字'
    ];
    
}
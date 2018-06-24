<?php
namespace app\admin\model;
use think\Model;
/**
* 后台用户模型
edit  by  blues
*/
class User extends Model
{
	protected function auth(){
		return $this->hasOne('Auth','id','role');
	}
	
}
<?php
namespace app\admin\model;
use think\Model;
/**
* admin
edit  by  blues
*/
class Admin extends Model
{
	
	protected function auth(){
		return $this->hasOne('Auth','id','role');
	}
}
<?php
// +----------------------------------------------------------------------
// | Sunny [ A development of scaffolding base thinkphp5.1 layui2.* ]
// +----------------------------------------------------------------------
// | Copyleft
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: blues ,<mymyjd@163.com>
// +----------------------------------------------------------------------
//网站后台基类
namespace app\admin\controller;
use think\Controller;
use think\Validate;
use app\admin\model\Admin as MAdmin;
use app\admin\validate\Admin as VAdmin;
class Admin extends Controller{
	public function initialize(){		
		if(session('uid')?true:false){
			
		}else{
		$this->redirect('login/notlogin');	
		}
	}
	//修改管理员信息
	public function info(){
		if($this->request->isPost()){
			$put=$this->request->post();
			MAdmin::where('id',session('uid'))->update($put);
			return json(array('code'=>200,'msg'=>'更新成功'));
		}
		$info=MAdmin::where('id',session('uid'))->find();
		return json(array('code'=>200,'data'=>$info));
	}

	//修改密码
	public function password(){
		if($this->request->isPost()){
			$put=$this->request->post();
			$validate=new Validate([
				'password'	=> 'require|max:20|min:5|alphaDash',
				'old_password'	=> 'require|max:20|min:5|alphaDash'
			]);
			if(!$validate->check($put)){
				return json(array('code'=>400,'error'=>$validate->getError()));
			}
			$old_password=$put['old_password'];
			$password=$put['password'];
			$passwordcode=MAdmin::where('id',session('uid'))->find();
			if(password_verify($old_password,$passwordcode['password'])){
				MAdmin::where('id',session('uid'))->update(['password'=>password_hash($password,PASSWORD_DEFAULT)]);
				return json(array('code'=>200,'msg'=>'修改成功'));
			}
			return json(array('code'=>400,'msg'=>'旧密码不正确'));
			
		}

	
	}
	
}

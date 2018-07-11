<?php
namespace app\admin\controller;
use think\Controller;
use think\captcha\Captcha;
use app\admin\model\Admin as MAdmin;
use app\admin\validate\Admin as VAdmin;
class Login extends Controller{
	/*error code*/
	private $error=[
		'400'	=>	'请求数据异常',
		'404'	=>	'用户不存在',
		'410'	=>	'验证码不正确',
		'411'	=>	'密码不正确',
		'412'	=>	'请求方式不对'
	];
	public function notlogin(){
		return json(array('code'=>10001,'msg'=>'尚未登录'));	
		}

	public function login(){
		if($this->request->isPost()){
			$post=$this->request->post();
			//验证码正确性
			if(!captcha_check($post['vercode']))
			{
				return json(array('code'=>400,'msg'=>$this->error['410']));
			}
			//字段验证
			$validate=new VAdmin;
			$result=$validate->check($post);
			if(!$result){
				return json(array('code'=>400,'error'=>$result));
			}
			$user=db('admin')->where('username',$post['username'])->select();
			if(empty($user[0])){
				return json(array('code'=>400,'error'=>$this->error['404']));
			}

			if(password_verify(trim($post['password']),$user[0]['password'])){
				session('username',$user[0]['username']);
				session('role',$user[0]['role']);
				session('uid',$user[0]['id']);
				return json(array('code'=>200,'msg'=>'登录成功'));
			}else{
				return json(array('code'=>400,'error'=>$this->error['411']));
			}
		}
		return json(array('code'=>400,'error'=>$this->error['412']));
	}
	public function captcha(){
		$captcha=new Captcha([
			'codeSet'	=>  '1234567890',
			'length'	=>	4,
			'reset'		=>	true,
			'imageH'	=>	40,
			'imageW'	=>	120,
			'useNoise'	=>	true,
			'fontttf'	=>	'4.ttf',
			'fontSize'	=>	15,

		]);
		return $captcha->entry();
	}
}

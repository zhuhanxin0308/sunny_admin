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

namespace app\admin\controller;
use app\admin\model\Admin as MAdmin;
use app\admin\validate\Admin as VAdmin;
use app\admin\model\User;
use app\admin\model\Log;
/**
*	网站用户类 
*/
class Users extends Admin
{
	//
	private $error=[
		'400'	=>	'请求数据异常',
		'404'	=>	'请求资源不存在'
	];
	public function check($data){
		if(is_array($data)){
			if(!empty($data)){
				if(!empty($data[0])){

				}else{
					return json(array('code'=>400,'error'=>$this->$error['400']));
				}
			}else{
				return json(array('code'=>400,'error'=>$this->$error['400']));
			}
		}
		else
		{
			if(empty($data)){
				return json(array('code'=>400,'error'=>$this->$error['400']));
			}
			else if(strlen($data)>30){
				return json(array('code'=>400,'error'=>$this->$error['400']));
			}
		}
		
	}
	public function user($page=1,$limit=10){
	
	//增

		// if($this->request->isPost()){
		// 	$validate=new VAdmin;
		// 	$post=Request()->only(['username','password','role']);
		// 	$result=$validate->check($post);
		// 	if(!$result){
		// 		return json(array('code'=>400,'error'=>$result));
		// 	}
		// 	if($post['role']==1){
		// 		return json(array('code'=>400,'error'=>$this->error['400']));
		// 	}
		// 	User::create($post);
		// 	$ip=$this->request->server()['REMOTE_ADDR'];
		// 	Log::create(array('aid'=>session('uid'),'do'=>'增加用户（'.$post['username'].'）','ip'=>$ip));
		// 	return json(array('code'=>200,'msg'=>'添加成功'));
		// }
	
		
	//查
			$count=User::count();
		
			$res=User::All(function($query)use($page,$limit){
				$query->field(['id','username','nickName','role','create_time','gender'])->page($page)->limit($limit);
			});
			foreach ($res as $key => $value) {
				$value->auth;
			}
			return json(array('code'=>0,'msg'=>'获取成功','data'=>$res,'count'=>$count));
	}
	public function userauth(){
		if($this->request->isPost()){
			User::where('id',$this->request->post()['id'])->update(['role'=>$this->request->post()['role']]);
			$ip=$this->request->server()['REMOTE_ADDR'];
			Log::create(array('aid'=>session('uid'),'do'=>'更新用户权限（id='.$this->request->post()['id'].'）','ip'=>$ip));
			return json(array('code'=>200,'msg'=>'更新成功'));
		}
	
		
	}
	public function useredit(){
		$data=Request()->only(['id','username','password']);
			$validate=new VAdmin;
			$result=$validate->check($data);
			if(!$result){
				return json(array('code'=>400,'error'=>$result));
			}
			
			$this->check($data['id']);
			$res=User::where('id',$data['id'])->find();
			if(count($res)==0){
				return json(array('code'=>400,'error'=>$this->error['400']));
			}
			User::where('id',$data['id'])->update(['password'=>password_hash($data['password'],PASSWORD_DEFAULT)]);
			$ip=$this->request->server()['REMOTE_ADDR'];
			Log::create(array('aid'=>session('uid'),'do'=>'修改用户信息（id='.$data['id'].'）','ip'=>$ip));
			return json(array('code'=>200,'msg'=>'更新成功'));
	}
	public function userdel(){
		if($this->request->isPost())
			$log="";
		$del=$this->request->post()['data'];
			$this->check($del);
			$dellist=[];
			foreach ($del as $key => $value) {
				array_push($dellist, $value['id']);
				$log=$log."".$value['id'].",";
			}
			//
			User::destroy($dellist);
			$ip=$this->request->server()['REMOTE_ADDR'];
			Log::create(array('aid'=>session('uid'),'do'=>'删除用户（id='.$log.'）','ip'=>$ip));
			return json(array('code'=>200,'msg'=>'删除成功！'));
	}

}
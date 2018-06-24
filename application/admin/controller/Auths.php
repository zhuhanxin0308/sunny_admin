<?php
namespace app\admin\controller;
use app\admin\model\Auth;
use app\admin\model\Admin as vAdmin;
use app\admin\model\User;
class Auths extends Admin{
	private $error=[
		'400'	=>	'提交的数据格式不正确',
		'404'	=>	'请求的资源不存在'
	];
	//数据常规检查
	public function check($data){
		if(is_array($data)){
			if(!empty($data)){
				if(!empty($data[0])){

				}else{
					return array('code'=>400,'error'=>$this->$error['400']);
				}
			}else{
				return array('code'=>400,'error'=>$this->$error['400']);
			}
		}
		else
		{
			if(empty($data)){
				return array('code'=>400,'error'=>$this->$error['400']);
			}
			else if(strlen($data)>30){
				return array('code'=>400,'error'=>$this->$error['400']);
			}
		}
		
	}

	public function auth($page=1,$limit=10){

		//删除操作
		if($this->request->isDelete()){
			$del=$this->request->delete()['data'];
			$this->check($del);
			$dellist=[];
			foreach ($del as $key => $value) {
				$user=User::where('role',$value['id'])->find();
				if($value['id']==1){
					return json(array('code'=>400,'error'=>'此角色无法删除'));
				}
				if(count($user)>0){
					return json(array('code'=>400,'error'=>'角色下有用户，删除失败'));
				}
				array_push($dellist, $value['id']);
			}
			//
			Auth::destroy($dellist);
			return json(array('code'=>200,'msg'=>'删除成功！'));
		}
		//添加操作
		if($this->request->isPost()){
			$post=Request()->only('name');
			$this->check($post['name']);
			$res=Auth::where('name',$post['name'])->find();
			if(count($res)>0){
				return json(array('code'=>400,'error'=>'此角色已经存在'));
			}
			Auth::create($post);
			return json(array('code'=>200,'msg'=>'添加成功'));
		}
		//更新操作
		if($this->request->isPut()){
			$put=Request()->only(['id','name']);
			$this->check($put['id']);
			if($put['id']==1){
				return json(array('code'=>400,'error'=>'此角色无法编辑'));
			}
			$res=Auth::where('id',$put['id'])->find();

			if(count($res)==0){
				return json(array('code'=>400,'error'=>$this->error['400']));
			}
			$rest=Auth::where('name',$put['name'])->find();
			if(count($rest)>0){
				return json(array('code'=>400,'error'=>'此角色已经存在'));
			}
			Auth::where('id',$put['id'])->update(['name'=>$put['name']]);
			return json(array('code'=>200,'msg'=>'更新成功'));
		}
		//读取操作
		$data=Auth::page($page)->limit($limit)->select();
		$count=count(Auth::All());
		return json(array('code'=>0,'data'=>$data,'msg'=>'rolelist','count'=>$count));
	}
	public function getAuthList(){
		return json(array('code'=>200,'data'=>Auth::where('id','neq',1)->select()));
	}
}
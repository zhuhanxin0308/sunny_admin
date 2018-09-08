<?php
namespace app\admin\controller;
use app\admin\model\Log;
use app\admin\model\BlogLog;
/**
 * 
 */
class Logs extends Admin
{
	//日志分页
	public function sloglist($page=1,$limit=10){
		$res=Log::order('create_time desc')->page($page,$limit)->select();
		$total=count(Log::All());
		if($total==0){
			return json(array('code'=>200,'msg'=>'没有记录','data'=>[],'count'=>0));
		}
		return json(array('code'=>0,'msg'=>'成功','data'=>$res,'count'=>$total));
	}
	//日志删除
	public function slogdel(){
		if($this->request->isPost()){
			$post=$this->request->post('id/a');
			Log::destroy($post);
			return json(array('code'=>200,'msg'=>"清除完成！",'data'=>[]));
		}
	}
	//日志清空
	public function slogempty(){
		if($this->request->isPost()){
			//闭包删除
			Log::destroy(function($query){
			    $query->where('id','>',0);
			});
			return json(array('code'=>200,'msg'=>"成功清空日志！",'data'=>[]));
		}
	}
	/*
	blog访问日志
	*/ 
	public function bloglist($page=1,$limit=10){
		$res=BlogLog::order('create_time desc')->page($page,$limit)->select();
		$total=count(BlogLog::All());
		if($total==0){
			return json(array('code'=>200,'msg'=>'没有记录','data'=>[],'count'=>0));
		}
		return json(array('code'=>0,'msg'=>'成功','data'=>$res,'count'=>$total));
	}
	public function blogdel(){
		if($this->request->isPost()){
			$post=$this->request->post('id/a');
			BlogLog::destroy($post);
			return json(array('code'=>200,'msg'=>"清除完成！",'data'=>[]));
		}
	}
	public function blogempty(){
		if($this->request->isPost()){
			//闭包删除
			BlogLog::destroy(function($query){
			    $query->where('id','>',0);
			});
			return json(array('code'=>200,'msg'=>"成功清空日志！",'data'=>[]));
		}
	}
}
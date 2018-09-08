<?php
namespace app\index\controller;
use think\Controller;
use app\index\model\Web;
use app\index\model\Post;
use	think\facade\Request;
use app\index\model\BlogLog;
use app\index\model\Comment;


class Blog extends Controller{
	protected function initialize()
		{
			$host=$this->request->server()['SERVER_NAME'];
			$ru=$this->request->server()['REQUEST_URI'];
			if(!strpos($ru, 'public')){
				$this->assign('public','');
			}else{
				$url=explode('public', $ru)[0];
				$this->assign('public','http://'.$host.$url.'public/');
			}
			
		}
	//点赞

	public function zan(){
		$pid=Request::has('pid','post')?Request::only('pid','post')['pid']*1:null;
		if($pid){
			//增加点赞量
			$post=Post::get($pid);
			$post->zan=['inc',1];
			$post->save();
			//存入日志
			$ip=Request::server('REMOTE_ADDR');
			$common=new Common;
			$city=$common->getcity($ip);
			BlogLog::create(['ip'=>$ip,'pid'=>$pid,'do'=>'点赞','city'=>$city]);
		
			//返回数据
			return json(array('code'=>200,'msg'=>'点赞成功','data'=>[]));
		}
		return json(array('code'=>405,'msg'=>'请求方式不对','data'=>[]));
	}
	public function comment(){
         if($this->request->isPost()){
            $post=$this->request->post();
            $ip=$this->request->server()['REMOTE_ADDR'];
            $post['ip']=$ip;
            Comment::create($post);
            //存入日志
			
			$common=new Common;
			$city=$common->getcity($ip);
			BlogLog::create(['ip'=>$ip,'pid'=>$post['pid'],'do'=>'发布评论','city'=>$city]);
            return json(array('code'=>200,'msg'=>'发布成功'));
        }
    }


}


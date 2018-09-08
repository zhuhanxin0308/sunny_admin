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
//这是后台首页的数据展示接口 //这里用的假数据 实际开发时按需要修改
namespace app\admin\controller;
use app\admin\model\User;
use app\admin\model\BlogLog;
use app\admin\model\Post;
use app\admin\model\Cate;
use app\admin\model\Comment;
use think\Db;
class Index extends Admin{
	
	public function index(){
		return json(array('code'=>200,'msg'=>'登录成功','data'=>array('username'=>session('username'))));
	}
	// 注销登陆
	public function loginout(){
		session('username',null);
		session('role',null);
		session('id',null);
		session_destroy();
		return json(array('code'=>200,'msg'=>'注销成功'));
	}
	/*
		根据权限加载快捷方式 数据
			*/
	public function main(){
		if($this->request->isPost()){
			
			$arr=[];//用来存放所有的数据
			
			$menu=new Menu;
			$arr['quick']=$menu->getQuickMenuList();
			$arr['php_version']=PHP_VERSION;
			$data['code']=200;
			$data['msg']='获取成功';
			$data['data']=$arr;
			return json($data);
			//菜单分组返回

		}
	}

	//硬盘存储信息接口
	public function memory(){
		$total=disk_total_space("./");
		$use=disk_free_space("./");
		$arr=[];
		$arr['cpu']=0;
		$arr['memory']=(int)($use/$total*100);
		$data['code']=200;
		$data['msg']='获取成功';
		$data['data']=$arr;
		return json($data);
	}
	
	public function tongji(){
		//用户数量统计
		$userCount=count(db('user')->select());
		//文章数量
		$wUserCount=count(Post::where('status','neq',-1)->select());
		//评论数量统计
		$videoCount=count(Comment::where('status','neq',-1)->select());
		//访客数量
		$otherCount=count(Db::table('blue_blog_log')->distinct(true)->field('ip')->select());
		$arr=[];
		array_push($arr,['name'=>'用户数量','value'=>$userCount]);
		array_push($arr,['name'=>'文章数量','value'=>$wUserCount]);
		array_push($arr,['name'=>'评论数量','value'=>$videoCount]);
		array_push($arr,['name'=>'访客数据','value'=>$otherCount]);
		return json(array('code'=>200,'msg'=>'获取成功','data'=>$arr));
	}
	//控制台 模拟数据接口
	public function testdata(){
		$arr=[0,2,4,6,8,10,12,14,16,18,20,22];
		$one=[];
		$two=[];
		
		foreach ($arr as $key => $value) {
			$one[$key]=count(BlogLog::where('create_time','>',strtotime('today')+$key*3600*2)->where('create_time','<=',strtotime('today')+($key+1)*3600*2)->select());
			$two[$key]=count(Db::table('blue_blog_log')->distinct(true)->field('ip')->where('create_time','>',strtotime('today')+$key*3600*2)->where('create_time','<=',strtotime('today')+($key+1)*3600*2)->select());
		}
		$data['one']=$one;//ip
		$data['two']=$two;//pv
		return json(array('code'=>200,'msg'=>'获取成功','data'=>$data));
	}
	public function newcom(){
		$res=Comment::where('status',1)->limit(10)->select();
		if(count($res)==0){
			return json(array('code'=>200,'msg'=>'没有数据','data'=>[],'count'=>0));
		}
		foreach ($res as $key => $value) {
			$post=Post::where('id',$value['pid'])->select()[0];
			$res[$key]['title']=$post->title;
		}

		return json(array('code'=>0,'msg'=>'最新十条评论','data'=>$res,'count'=>count($res)));
	}
	public function newpublish(){
		$res=Post::where('status',1)->limit(10)->select();
		if(count($res)==0){
			return json(array('code'=>200,'msg'=>'没有数据','count'=>0,'data'=>[]));
		}
		foreach ($res as $key => $value) {
			$res[$key]['catename']=Cate::where('id',$value['cate'])->select()[0]['name'];
		}
		return json(array('code'=>0,'msg'=>'最新十条文章','data'=>$res,'count'=>count($res)));
	}

//模板缓存
protected function delDirAndFile($dir){

	

	if ( $handle = opendir( "$dir" ) ) {
		while ( false !== ( $item = readdir( $handle ) ) ) {
			if ( $item != "." && $item != ".." ) {
				if ( is_dir( "$dir/$item" ) ) {
					$this->delDirAndFile( "$dir/$item" );
				} else {
					if( unlink( "$dir/$item" ) ) sleep(1);
				}
			}
		}
		closedir( $handle );
		if( rmdir( $dir ) )return json(array('code'=>200,'msg'=>'执行成功'));
	}
}
public function clear(){
	if($this->request->isPost()){
		$dir=env('RUNTIME_PATH');
		return	$this->delDirAndFile($dir);	
	}else{
		
	}
	


}
//访客地图接口
public function map(){
	
	if($this->request->isPost()){
		$city=[
            '北京','天津','上海','重庆','河北','山西','辽宁','吉林','黑龙江','江苏','浙江','安徽','福建','江西','山东','河南','湖北','湖南','广东','海南','四川','贵州','云南','陕西','甘肃','青海','台湾','内蒙古','广西','西藏','宁夏','新疆','香港','澳门'
        ];
        $data=[];
		foreach ($city as $key => $value) {
			$data[$key]['name']=$value;
			$data[$key]['value']=count(BlogLog::where('create_time','>',strtotime("today"))->where('city',$value)->select());
		}
		return json(array('code'=>200,'msg'=>"获取成功",'data'=>$data));
	
	}
}







}

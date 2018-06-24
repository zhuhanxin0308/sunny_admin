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
use app\admin\model\Menu;
class Index extends Admin{
	
	public function index(){
		return array('code'=>200,'msg'=>'登录成功','data'=>array('username'=>session('username')));
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
			$result=[];//用来存放菜单列表
			$res=db('menu')->where('auth',session('role'))->where('name','neq','')->where('status',1)->where('parentId','neq',0)->select();
			foreach ($res as $key => $value) {
				$tmp=db('menu')->where('auth',session('role'))->where('status',1)->where('parentId',$value['id'])->select();
				if(empty($tmp)){
					$parent=db('menu')->where('id',$value['parentId'])->select();
					if(!empty($parent)){
						$value['parent']=$parent[0];
						$pparent=db('menu')->where('id',$parent[0]['parentId'])->select();
						if(!empty($pparent)){
							$value['pparent']=$pparent[0];	
						}
					}
					array_push($result, $value);
				}
			}		
			$arr['quick']=$result;
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
		$total=disk_total_space("/");
		$use=disk_free_space("/");
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
		//微信用户统计
		$wUserCount=1223;
		//视频数量统计
		$videoCount=3322;
		//其他数量
		$otherCount=5522;
		$arr=[];
		array_push($arr,['name'=>'用户数量','value'=>$userCount]);
		array_push($arr,['name'=>'微信用户','value'=>$wUserCount]);
		array_push($arr,['name'=>'视频数量','value'=>$videoCount]);
		array_push($arr,['name'=>'其他数据','value'=>$otherCount]);
		return json(array('code'=>200,'msg'=>'获取成功','data'=>$arr));
	}
	//控制台 模拟数据接口
	public function testdata(){
		$arr=[
				'data'	=>[
					'one'	=> [1100,2220,3123,4363,2735,4946],
					'two'	=> [292,1233,2124,2344,1144,3244],
				]	
			];
		return json($arr);
	}
	public function testdata3(){
		$arr=[
			'code'	=> 0,
			'count'	=>3,
			'data'	=>[[
				'username'	=> '张三',
				'create_time'	=>'1529658546054'
			],[
				'username'	=> '李四',
				'create_time'	=>'1529658546054'
			],[
				'username'	=> '王五',
				'create_time'	=>'1529658546054'
			]]
		];
		return json($arr);
	}
	public function testdata2(){
		$arr=[
			'code'	=> 0,
			'count'	=>3,
			'data'	=>[[
				'id'	=> '1',
				'ques'	=> 'sunny后台管理系统开发框架今天发布',
				'create_time'	=>'1529658546054'
			],[
				'id'	=>2,
				'ques'	=> 'sunny后台管理系统开发框架今天发布',
				'create_time'	=>'1529658546054'
			],[
				'id'	=>3,
				'ques'	=> 'sunny后台管理系统开发框架今天发布',
				'create_time'	=>'1529658546054'
			]]
		];
		return json($arr);
	}

//清楚模板缓存
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







}
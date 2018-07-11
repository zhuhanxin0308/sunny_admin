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
//网站后台菜单类
namespace app\admin\controller;
use app\admin\model\Menu as MMenu;
class Menu extends Admin{
//返回后台左侧菜单数据	
	public function menu(){	
		$arr=db('menu')->where('auth',session('role'))->where('parentId',0)->order('orders asc')->where('status',1)->select();
		if(empty($arr)){
			return json(['code'=>400,'error'=>'请检查数据库']);
		}
		$tmp=$this->getchildmenu($arr);
		return json(['code'=>200,'msg'=>'获取menu成功','data'=>$tmp]);
	}
	//封装方法
	protected function getchildmenu($arr){
		foreach ($arr as $key => $value) {
			$arr[$key]['list']=db('menu')->where('auth',session('role'))->where('parentId',$value['id'])->order('orders asc')->where('status',1)->select();
			if(!empty($arr[$key]['list'])){
				foreach ($arr[$key]['list'] as $key1 => $value1) {
					$arr[$key]['list'][$key1]['list']=db('menu')->where('parentId',$value1['id'])->where('status',1)->order('orders asc')->select();
				}
			}
		}
		return $arr;
	}
	//返回菜单信息
	public function addmenuinfo(){
		$data['role']=db('auth')->select();
		$data['parentId']=[];
		$menu=db('menu')->where('parentId',0)->select();
		foreach ($menu as $key => $value) {
			array_push($data['parentId'], $value);
			$tmp=db('menu')->where('parentId',$value['id'])->select();
			foreach ($tmp as $k => $v) {
				array_push($data['parentId'], $v);
			}
		}	
		return json(['code'=>200,'data'=>$data,'msg'=>'获取成功']);
	}
	//添加菜单接口
	public function addmenu(){
		if($this->request->isPost()){
			$post=$this->request->post();
			$menu=new MMenu;	
			$res=$menu->where('parentId',$post['parentId'])->where(function ($query)use ($post){
				$query->where('name',$post['name'])->whereOr('title',$post['title']);})->select();
			if(count($res)==0){
				$menu->data($post)->save();
				return json(['code'=>200,'msg'=>'添加成功']);
			}else{
				return json(['code'=>400,'msg'=>'添加失败,存在相同的模块名或者菜单名']);
			}
		}
	}
	//菜单列表接口
	public function menulist(){
		if($this->request->isPost()){
			$arr=db('menu')->where('parentId',0)->select();
			$tmp=[];
			foreach ($arr as $key => $value) {
				array_push($tmp, $value);
			$firlist=db('menu')->where('auth',session('role'))->where('parentId',$value['id'])->order('orders asc')->select();
			foreach ($firlist as $k => $v) {
				array_push($tmp, $v);
			}
			if(!empty($firlist)){
				foreach ($firlist as $key1 => $value1) {
					$seclist=db('menu')->where('parentId',$value1['id'])->order('orders asc')->select();
					foreach ($seclist as $k1 => $v1) {
						array_push($tmp, $v1);
					}
				}
			}	
		}
			return json(['code'=>0,'msg'=>'获取成功','data'=>$tmp]);
		}
	}
	//删除菜单接口
	public function menudel(){
		if($this->request->isPost()){
			$menu=new MMenu;
			$post=$this->request->post()['data'];
			foreach	($post as $key => $value){
				$res=$menu->where('parentId',$value['id'])->find();
				if(!empty($res)){
					return json(['code'=>400,'error'=>'请先删除子菜单']);
				}
			}
			foreach ($post as $key => $value) {
				$menu->where('id',$value['id'])->delete();
				
			}
			return json(['code'=>200,'msg'=>'删除成功']);
		}
	}
}

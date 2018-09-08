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
//网站公共封装方法
namespace app\admin\controller;
class Common extends Admin{
    //上传文件件公共方法
    //filetype 文件类型 如mp4 file 等
    //arr  文件存放路径
	public function uploader($filetype='file',$arr='../uploads'){

	$file = $this->request->file($filetype);
		
    // 移动到框架应用根目录/uploads/ 目录下
    $info = $file->move( $arr);
    if($info){
       return $info;
    }else{
        // 上传失败获取错误信息
        return $file->getError();
    }
	}
    
}
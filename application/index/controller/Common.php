<?php
namespace app\index\controller;
use think\Controller;
class Common extends Controller{
	//自制ip转地名接口
    public function getcity($ip=""){
	    if($ip==""){
		    
return json(array('code'=>400,'msg'=>'缺少参数','data'=>[]));
	    }
        //所有省份
   $city=[
      '北京','天津','上海','重庆','河北','山西','辽宁','吉林','黑龙江','江苏','浙江','安徽','福建','江西','山东','河南','湖北','湖南','广东','海南','四川','贵州','云南','陕西','甘肃','青海','台湾','内蒙古','广西','西藏','宁夏','新疆','香港','澳门'
  ];
    $test=file_get_contents('http://www.baidu.com/s?wd='.$ip);
    $ex="/<div class=\"result-op c-container\".*?>.*?<\/div>/s";
    preg_match_all($ex,$test,$res);
    foreach ($city as $key => $value) {
      if(strpos($res[0][0], $value)){
          return json(array('code'=>200,'msg'=>'查询成功','data'=>$value));
      }
   }
   return json(array('code'=>200,'msg'=>'查询成功','data'=>"非大陆"));
    }
}

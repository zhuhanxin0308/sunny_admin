<?php
namespace app\index\controller;
use app\index\model\Web;
use app\index\model\Post;
use app\index\model\Comment;
use app\index\model\BlogLog;
class Index extends Blog
{
    public function index()
    {
        $web=new Web;
        $webconfig=$web->select()[0];
        //获取文章列表
        $post=new Post;
        $article=$post->where('status',1)->order('create_time desc')->page(1,10)->select();
        //点赞限制
        $ip=$this->request->server()['REMOTE_ADDR'];
        $iszan = BlogLog::where('ip',$ip)->where('do','点赞')->column('pid');

        //获取图片
        $img=array('http://mymyjd.cn/images/logo.png','http://mymyjd.cn/images/logo.png');
        foreach ($article as $key => $value) {
           $article[$key]['img']=$img;
           $article[$key]['iszan']=in_array($value['id'], $iszan)?1:0;
        }
        //模板引擎
        $this->assign('article',$article);
        $this->assign('web',$webconfig);
        //记录日志
        $refer = "";

        if(isset($this->request->server()['HTTP_REFERER'])){
             $refer=$this->request->server()['HTTP_REFERER'];
        }else{
           $refer=null;
        }

        //访问日志
        $ip=$this->request->server()['REMOTE_ADDR'];
        
        //一个15分钟内同一IP访问不在记录
        $log=BlogLog::where('ip',$ip)->where('do','访问主页')->where('create_time','>',time()-900)->select();
        if(count($log)==0){
            $common=new Common;
            $city=$common->getcity($ip);
            BlogLog::create(['ip'=>$ip,'refer'=>$refer?$refer:'直接访问','do'=>'访问主页','city'=>$city]);
        }
        
       

        //渲染
        return $this->fetch();
    }
    //异步列表接口

    public function list($page=2,$limit=10){
        $post=new Post;

        $article=$post->where('status',1)->order('create_time desc')->page($page,10)->select();
         $ip=$this->request->server()['REMOTE_ADDR'];
        $iszan = BlogLog::where('ip',$ip)->where('do','点赞')->column('pid');

        //获取图片
        $img=array('http://mymyjd.cn/images/logo.png','http://mymyjd.cn/images/logo.png');
        foreach ($article as $key => $value) {
           $article[$key]['img']=$img;
           $article[$key]['iszan']=in_array($value['id'], $iszan)?1:0;
           $article[$key]['content']=strip_tags($article[$key]['content']);
        }
        return json(array('code'=>200,'msg'=>'获取成功','data'=>$article,'pages'=>ceil(count($post->where('status',1)->order('create_time desc')->select())/10)));
    }
    //文章详情页
    public function details($id=0){
         
      
        if($id==0){
            $this->redirect('404');
        }
         $web=new Web;
         $post=new Post;
         $comment=new Comment;

        //记录访问
         $po = Post::get($id);
         $po->hit=['inc',1];
         $po->save();  
         //读取网站配置
         $webconfig=$web->select()[0];
        
        //获取正文内容
        $article=$post->where('status',1)->where('id',$id)->select()[0];
        if(count($article)==0){
            $this->redirect('404');
        }
        $article['content']=str_replace("\n",'<br>',$article['content']);
        //点赞限制
        $ip=$this->request->server()['REMOTE_ADDR'];
        $iszan = count(BlogLog::where('ip',$ip)->where('do','点赞')->where('pid',$id)->select());
        $article['iszan']=$iszan;
        //获取评论
        
        $cm=$comment->where('pid',$id)->where('status',1)->select();
        $this->assign('web',$webconfig);
        $this->assign('article',$article);
        $this->assign('comment',$cm);


        //记录日志
         $refer = "";

        if(isset($this->request->server()['HTTP_REFERER'])){
             $refer=$this->request->server()['HTTP_REFERER'];
        }else{
           $refer=null;
        }

        //访问日志
        $ip=$this->request->server()['REMOTE_ADDR'];
        
        //一个15分钟内同一IP访问不在记录
        $log=BlogLog::where('ip',$ip)->where('do','阅读文章')->where('create_time','>',time()-900)->select();
        if(count($log)==0){
            $common=new Common;
            $city=$common->getcity($ip);
            BlogLog::create(['ip'=>$ip,'refer'=>$refer?$refer:'直接访问','do'=>'阅读文章','city'=>$city]);
        }
        return $this->fetch();
    }
    public function message(){
        return $this->fetch();
    }
    public function search($keyword="",$page=1,$limit=10){

        if($keyword==""){
            $this->redirect('index/index');
        }
       
        $web=new Web;
        $webconfig=$web->select()[0];

        $res=Post::where('status',1)->where('title|content','like','%'.$keyword.'%')->page($page,$limit)->select();
        $this->assign('keyword',$keyword);
        $this->assign('web',$webconfig);
        $this->assign('article',$res);
        $this->assign('total',count(Post::where('status',1)->where('title|content','like','%'.$keyword.'%')->select()));
        $this->assign('isempty',"<span> 没有合适的结果奥</span>");
        //记录日志
         $refer = "";

        if(isset($this->request->server()['HTTP_REFERER'])){
             $refer=$this->request->server()['HTTP_REFERER'];
        }else{
           $refer=null;
        }

        //访问日志
        $ip=$this->request->server()['REMOTE_ADDR'];
        
        //一个15分钟内同一IP访问不在记录
        $log=BlogLog::where('ip',$ip)->where('keyword',$keyword)->where('do','搜索文章')->where('create_time','>',time()-900)->select();
        if(count($log)==0){
            $common=new Common;
            $city=$common->getcity($ip);
            BlogLog::create(['keyword'=>$keyword
                ,'ip'=>$ip,'refer'=>$refer?$refer:'直接访问','do'=>'搜索文章','city'=>$city]);
        }
        return $this->fetch();
    }
    public function q404(){
        return $this->fetch();
    }
    public function about(){
        return $this->fetch();
    }
}

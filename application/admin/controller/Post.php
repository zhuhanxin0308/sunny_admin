<?php
namespace app\admin\controller;
use app\admin\model\Post as MPost;
use app\admin\model\Cate;
use app\admin\model\Comment;
use app\admin\model\Log;
class Post extends Admin{
    //分类列表
     public function articlecate($page,$limit){
        $cate=new Cate;
        $res=$cate->page($page,$limit)->select();
        $count=count($cate->select());
        return json(array('code'=>0,'msg'=>'获取成功','data'=>$res,'count'=>$count));
    }
    //所有分类
    public function cate(){
        return json(Cate::select());
    }
    //分类删除
    public function catedel(){
        if($this->request->isPost()){
              //获取要删除的id列表
            $idlist=$this->request->post('id/a');
            $res=MPost::where('cate',$id)->where('status','neq',-1)->select();
            if(count($res)!=0){
                return json(array('code'=>400,'msg'=>'删除失败,该分类下还有文章','data'=>[]));
            }
            Cate::destroy($idlist);
            //logs
            $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'删除文章分类','ip'=>$ip));
            return json(array('code'=>200,'msg'=>'删除成功','data'=>[]));
        }
    }
    //更新分类
    public function cateupdate(){
        if($this->request->isPost()){
              //获取要删除的id列表
            $post=$this->request->post();
            Cate::update($post);

            //logs
            $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'修改菜单（id='.$post['id'].'）','ip'=>$ip));
            return json(array('code'=>200,'msg'=>'更新成功','data'=>[]));
        }
    }
    //添加分类
    public function cateadd(){
        if($this->request->isPost()){
            $catename=$this->request->post()['name'];
            $row=Cate::where('name',$catename)->select();
            if(count($row)==0){
                Cate::create(['name'=>$catename]);
                $ip=$this->request->server()['REMOTE_ADDR'];
                Log::create(array('aid'=>session('uid'),'do'=>'添加分类'.$catename,'ip'=>$ip));
                return json(array('code'=>200,'msg'=>'添加成功','data'=>[]));
            }else{
                return json(array('code'=>400,'msg'=>'添加失败，存在相同名字的分类','data'=>[]));
            }
        }
    }
    //发布文章
    public function save(){
        if($this->request->isPost()){
            $post=$this->request->post();
            $post['cid']=session('uid');
            MPost::create($post);
            //logs
             $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'发布文章'.$post['title'],'ip'=>$ip));
            return json(array('code'=>200,'msg'=>'发布成功'));
        }
       
    }
    //图片上传接口
    public function upload_img(){
        if($this->request->isPost()){
           $common=new Common;
           $info= $common->uploader('file','../uploads/post/img');
           return json(array('code'=>0,'msg'=>'上传成功','data'=>array('src'=>'http://localhost/new/admin/uploads/post/img/'.$info->getSaveName())));
        }
    }
    //文章列表
    public function article($page,$limit){
        $post=new MPost;
        $cate=new Cate;
        $res=$post->where('status','neq',-1)->page($page,$limit)->select();
        if(count($res)!=0){
            foreach ($res as $key => $value) {
                $res[$key]['catename']=$cate->where('id',$value->cate)->select()[0]->name;
            }
        }
        $count=count($post::where('status','neq',-1)->select());
        return json(array('code'=>0,'msg'=>'获取成功','data'=>$res,'count'=>$count));
    }
   
    //删除文章
    public function postdel(){
        if($this->request->isPost()){
           $log="";
            //获取要删除的id列表

            $idlist=$this->request->post('id/a');
            $data=[];
            //删除时不直接删除，而是改变状态
            foreach ($idlist as $key => $value) {
               $data[$key]=array('id'=>$value,'status'=>-1);
               Comment::where('pid',$value)->update(['status'=>-1]);
               $log=$log."".$value.",";
            }
            $post=new MPost;
            $post->saveAll($data);
            //MPost::destroy($idlist);
             $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'把文章（id='.$log.')放入回收站','ip'=>$ip));
            return json(array('code'=>200,'msg'=>'删除成功','data'=>[]));
        }
    }
    //编辑更新文章
    public function update(){
        if($this->request->isPost()){
            $post=$this->request->post();
            $post['cid']=session('uid');

            MPost::update($post);
            $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'更新文章'.$post['title'],'ip'=>$ip));
            return json(array('code'=>200,'msg'=>'发布成功'));
        }
    }
    //搜索
    public function search($page=1,$limit=10,$keyword="",$cate=0,$status=1){
           
            
            if($cate==0){
                if($keyword==""){
                     $res=MPost::page($page,$limit)->where('status',$status)->select();
                    $total=count(MPost::where('status',$status)->select());
                    return json(array('code'=>0,'msg'=>'搜索成功','data'=>$res,'count'=>$total));
                }else{
                    $res=MPost::where('title|content','like','%'.$keyword.'%')->page($page,$limit)->where('status',$status)->select();
                    $total=count(MPost::where('title|content','like','%'.$keyword.'%')->where('status',$status)->select());
                    return json(array('code'=>0,'msg'=>'搜索成功','data'=>$res,'count'=>$total));
                }
            }else{
                 if($keyword==""){

                     $res=MPost::where('cate',$cate)->where('status',$status)->page($page,$limit)->select();
                    $total=count(MPost::where('cate',$cate)->where('status',$status)->select());
                    return json(array('code'=>0,'msg'=>'搜索成功','data'=>$res,'count'=>$total));
                }else{
                    $res=MPost::where('title|content','like','%'.$keyword.'%')->where('cate',$cate)->where('status',$status)->page($page,$limit)->select();
                    $total=count(MPost::where('title|content','like','%'.$keyword.'%')->where('cate',$cate)->where('status',$status)->select());
                    return json(array('code'=>0,'msg'=>'搜索成功','data'=>$res,'count'=>$total));
                }
            }

        }
        //评论列表
        public function comment($page=1,$limit=10){
            $count=count(Comment::where('status','neq',-1)->select());
            $res=Comment::where('status','neq',-1)->page($page,$limit)->select();
            return json(array('code'=>0,'msg'=>'获评论列表成功','data'=>$res,'count'=>$count));
        }
        public function comsearch($pid=0,$keyword="",$email="",$page=1,$limit=10){
            //搜索的混乱逻辑啊啊啊
            if($pid==0){
                if($keyword==""){
                    if($email==""){
                        $res=Comment::where('status','neq',-1)->page($page,$limit)->select();
                        $total=count(Comment::where('status','neq',-1)->select());
                        return json(array('code'=>0,'msg'=>'所有评论','data'=>$res,'count'=>$total));
                    }else{
                        $res=Comment::where('status','neq',-1)->where('email',$email)->page($page,$limit)->select();
                        $total=count(Comment::where('status','neq',-1)->where('email',$email)->select());
                        return json(array('code'=>0,'msg'=>'搜索结果','data'=>$res,'count'=>$total));
                    }
                }else{
                     if($email==""){
                        $res=Comment::where('status','neq',-1)->where('content','like',"%".$keyword."%")->page($page,$limit)->select();
                        $total=count(Comment::where('status','neq',-1)->where('content','like',"%".$keyword."%")->select());
                        return json(array('code'=>0,'msg'=>'搜索结果','data'=>$res,'count'=>$total));
                    }else{
                        $res=Comment::where('status','neq',-1)->where('email',$email)->where('content','like',"%".$keyword."%")->page($page,$limit)->select();
                        $total=count(Comment::where('status','neq',-1)->where('content','like',"%".$keyword."%")->where('email',$email)->select());
                        return json(array('code'=>0,'msg'=>'搜索结果','data'=>$res,'count'=>$total));
                    }
                }
            }else{
                if($keyword==""){
                    if($email==""){
                        $res=Comment::where('status','neq',-1)->where('pid',$pid)->page($page,$limit)->select();
                        $total=count(Comment::where('status','neq',-1)->where('pid',$pid)->select());
                        return json(array('code'=>0,'msg'=>'搜索结果','data'=>$res,'count'=>$total));
                    }else{
                        $res=Comment::where('status','neq',-1)->where('pid',$pid)->where('email',$email)->page($page,$limit)->select();
                        $total=count(Comment::where('status','neq',-1)->where('pid',$pid)->where('email',$email)->select());
                        return json(array('code'=>0,'msg'=>'搜索结果','data'=>$res,'count'=>$total));
                    }
                }else{
                     if($email==""){
                        $res=Comment::where('status','neq',-1)->where('pid',$pid)->where('content','like',"%".$keyword."%")->page($page,$limit)->select();
                        $total=count(Comment::where('status','neq',-1)->where('pid',$pid)->where('content','like',"%".$keyword."%")->select());
                        return json(array('code'=>0,'msg'=>'搜索结果','data'=>$res,'count'=>$total));
                    }else{
                        $res=Comment::where('status','neq',-1)->where('pid',$pid)->where('email',$email)->where('content','like',"%".$keyword."%")->page($page,$limit)->select();
                        $total=count(Comment::where('status','neq',-1)->where('pid',$pid)->where('content','like',"%".$keyword."%")->where('email',$email)->select());
                        return json(array('code'=>0,'msg'=>'搜索结果','data'=>$res,'count'=>$total));
                    }
                }
            }
        }
        //编辑评论
         public function comupdate(){
                if($this->request->isPost()){
                      //获取要删除的id列表
                    $post=$this->request->post();
                    Comment::update($post);
                    $ip=$this->request->server()['REMOTE_ADDR'];
                    Log::create(array('aid'=>session('uid'),'do'=>'编辑评论（id='.$post['id'].')','ip'=>$ip));
                    return json(array('code'=>200,'msg'=>'更新成功','data'=>[]));
                }
            }
            //删除评论
        public function comdel(){
            if($this->request->isPost()){
              //获取要删除的id列表
            $idlist=$this->request->post('id/a');
            Comment::destroy($idlist);
            $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'删除评论','ip'=>$ip));
            return json(array('code'=>200,'msg'=>'删除成功','data'=>[]));
        }
    }
    public function recly($page=1,$limit=10){
        $post=new MPost;
        $cate=new Cate;
        $res=$post->where('status',-1)->page($page,$limit)->select();
        
        $count=count($post::where('status',-1)->select());
        if($count==0){
             return json(array('code'=>200,'msg'=>"获取成功,共有".$count."条数据",'data'=>[],'count'=>$count));
        }
        return json(array('code'=>0,'msg'=>"获取成功,共有".$count."条数据",'data'=>$res,'count'=>$count));
    }
    //从回收站删除
    public function reclydel(){
        if($this->request->isPost()){
            $log="";
              //获取要删除的id列表
            $idlist=$this->request->post('id/a');
            MPost::destroy($idlist);
            foreach ($idlist as $key => $value) {
                Comment::where('pid',$value)->delete();
                $log=$log."".$value.",";
            }
            $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'从回收站删除文章（id='.$log.')','ip'=>$ip));
            return json(array('code'=>200,'msg'=>'删除成功','data'=>[]));
        }
    }
    //清空回收站
    public function reclyempty(){
        if($this->request->isPost()){       
            MPost::where('status',-1)->delete();
            Comment::where('status',-1)->delete();
            $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'清空回收站','ip'=>$ip));
            return json(array('code'=>200,'msg'=>'回收站已经清空了','data'=>[]));
        }
    }
    //还原数据
    public function getback(){
        if($this->request->isPost()){
            $log=""; 
            $idlist=$this->request->post('id/a');  
            $data=[];  

            foreach ($idlist as $key => $value) {
               $res=MPost::where('id',$value)->select()[0];
               $hascate=Cate::where('id',$res->cate)->select();
               if(count($hascate)==0){
                $data[$key]=array('id'=>$value,'status'=>1,'cate'=>1);
               }else{
                $data[$key]=array('id'=>$value,'status'=>1);
               }
               
               Comment::where('pid',$value)->update(['status'=>1]);
               $log=$log."".$value.",";
            }
            $article=new MPost;
            $article->saveAll($data);
            $ip=$this->request->server()['REMOTE_ADDR'];
            Log::create(array('aid'=>session('uid'),'do'=>'还原数据（id='.$log.')','ip'=>$ip));
            return json(array('code'=>200,'msg'=>'还原成功','data'=>[]));
        }
    }
    
    
}
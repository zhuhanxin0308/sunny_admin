<?php /*a:1:{s:71:"C:\phpStudy\PHPTutorial\WWW\new\application\index\view\index\index.html";i:1536387967;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo htmlentities($web['title']); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="<?php echo htmlentities($web['keywords']); ?>">
	<meta name="description" content="<?php echo htmlentities($web['descript']); ?>">
	<link rel="stylesheet" href="<?php echo htmlentities($public); ?>static/layui/css/layui.css">
	<link rel="stylesheet" href="<?php echo htmlentities($public); ?>static/blog/css/mian.css">
<script type="text/javascript">
      var ROOT="<?php echo htmlentities($public); ?>";
	</script>
</head>
<body class="lay-blog">
		<div class="header">
			<div class="header-wrap">
				<h1 class="logo pull-left">
					<a href="<?php echo htmlentities($public); ?>index/index/index.html">
						<img src="<?php echo htmlentities($public); ?>static/blog/images/logo.png" alt="" class="logo-img">
						<img src="<?php echo htmlentities($public); ?>static/blog/images/logo-text.png" alt="" class="logo-text">
					</a>
				</h1>
				<form class="layui-form blog-seach pull-left" action="<?php echo htmlentities($public); ?>index/index/search">
					<div class="layui-form-item blog-sewrap">
					    <div class="layui-input-block blog-sebox">
					      <i class="layui-icon layui-icon-search"></i>
					      <input type="text" name="keyword" lay-verify="title|required" autocomplete="off"  class="layui-input">
					    </div>
					</div>
				</form>
				<div class="blog-nav pull-right">
					<ul class="layui-nav pull-left">
					  <li class="layui-nav-item layui-this"><a href="<?php echo htmlentities($public); ?>index/index/index.html">首页</a></li>
					<!--   <li class="layui-nav-item"><a href="message.html">留言</a></li>
					  <li class="layui-nav-item"><a href="about.html">关于</a></li> -->
					</ul>
					<a href="<?php echo htmlentities($public); ?>web/start" class="personal pull-left">
						<i class="layui-icon layui-icon-username"></i>
					</a>
				</div>
				<div class="mobile-nav pull-right" id="mobile-nav">
					<a href="javascript:;">
						<i class="layui-icon layui-icon-more"></i>
					</a>
				</div>
			</div>
			<ul class="pop-nav" id="pop-nav">
				<li><a href="<?php echo htmlentities($public); ?>index/index/index.html">首页</a></li>
				<!-- <li><a href="message.html">留言</a></li>
				<li><a href="about.html">关于</a></li> -->
			</ul>
		</div>
		<div class="container-wrap">
			<div class="container">
					<div class="contar-wrap" id="list">
						<h4 class="item-title">
							<p><i class="layui-icon layui-icon-speaker"></i>公告：<span>欢迎来到我的轻博客</span></p>
						</h4>
						<?php if(is_array($article) || $article instanceof \think\Collection || $article instanceof \think\Paginator): $i = 0; $__LIST__ = $article;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
						<div class="item" style="max-height: 400px;overflow: hidden;">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<h3>
									<a style="display: -webkit-box;max-height: 30.67px;-webkit-line-clamp: 1;-webkit-box-orient: vertical;overflow: hidden;" href="<?php echo htmlentities($public); ?>index/index/details.html?id=<?php echo htmlentities($vo['id']); ?>"><?php echo htmlentities($vo['title']); ?>
									</a>
								</h3>
								<h5>发布于：<span><?php echo htmlentities($vo['create_time']); ?></span></h5>
								<p style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;max-height: 84px;">
									<?php echo htmlentities(strip_tags($vo['content'])); ?>

								</p>
								<div class="layui-row layui-col-space10" style="display: block;width: 100%;overflow: hidden;">
								<!-- <div class="layui-col-xs4">
									<div class="grid-demo">
								<img src="/static/blog/images/item.png" style="width: 100%;height: auto;" alt="">
								</div>
								</div> -->
								<!-- <?php if(!empty($vo['img'])): if(is_array($vo['img']) || $vo['img'] instanceof \think\Collection || $vo['img'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['img'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$images): $mod = ($i % 2 );++$i;?>
										<div class="layui-col-xs4">
											<div class="grid-demo">
												<img style="width: 100%;height: auto;" src="<?php echo htmlentities($images); ?>" alt="">
											</div>
										</div>
									<?php endforeach; endif; else: echo "" ;endif; endif; ?> -->
								</div>
							</div>
							<div class="comment count">
								<a href="<?php echo htmlentities($public); ?>index/index/details.html?id=<?php echo htmlentities($vo['id']); ?>">评论</a>
								<?php if($vo['iszan']==0): ?>
								<a href="javascript:;" class="like" data="<?php echo htmlentities($vo['id']); ?>">点赞(<?php echo htmlentities($vo['zan']); ?>)</a>
									
								<?php else: ?>
									<a href="javascript:;" class="like layblog-this" data="<?php echo htmlentities($vo['id']); ?>">已赞(<?php echo htmlentities($vo['zan']); ?>)</a>
								<?php endif; ?>
								
							</div>
						</div>
						<?php endforeach; endif; else: echo "" ;endif; ?>
						
					
					
			</div>
		</div>
		<div class="footer">
			<p>
				<span><?php echo $web['copyright']; ?></span>
				
				<span>MIT license</span>
			</p>
			<p><span>人生就是一场修行</span></p>
		</div>
		<div style="display: none;"><?php echo $web['code']; ?></div>
	
	<script src="<?php echo htmlentities($public); ?>static/layui/layui.js"></script>
	<script>
		layui.config({
		  base: '<?php echo htmlentities($public); ?>static/blog/js/' 
		}).use(['blog','jquery','flow'],function(){
			var blog=layui.blog,
			$=layui.jquery,
			flow=layui.flow;
			flow.load({
			    elem: '#list' //指定列表容器
			    ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
			      var lis = [];
			      var img=""
			      
			  
			      	
			    
			      //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
			      $.get('<?php echo htmlentities($public); ?>index/index/list?page='+page, function(res){
			        //假设你的列表返回在data集合中
			        layui.each(res.data, function(index, item){
			        	//item.img.forEach(im =>{
			       //  		img+=`<div class="layui-col-xs4">
										// 	<div class="grid-demo">
										// 		<img style="width: 100%;height: auto;" src="${im}" alt="">
										// 	</div>
										// </div>`
			       //  	})
			          lis.push(`<div class="item" style="max-height: 400px;overflow: hidden;">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<h3>
									<a style="display: -webkit-box;max-height: 30.67px;-webkit-line-clamp: 1;-webkit-box-orient: vertical;overflow: hidden;" href="<?php echo htmlentities($public); ?>index/index/details.html?id=${item.id}">${item.title}
									</a>
								</h3>
								<h5>发布于：<span>${item.create_time}</span></h5>
								<p style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;max-height: 84px;">
									${item.content}

								</p>
								<div class="layui-row layui-col-space10" style="display: block;width: 100%;overflow: hidden;">
								
								

								
								</div>
							</div>
							<div class="comment count">
								<a href="<?php echo htmlentities($public); ?>index/index/details.html?id=${item.id}">评论</a>
								${item.zan==0?`<a href="javascript:;" class="like" data="${item.id}">点赞(${item.zan})</a>`:`<a href="javascript:;" class="like layblog-this" data="${item.id}">已赞(${item.zan})</a>`}
								
								
								
							</div>
						</div>`);
			        }); 
			    
			        
			        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
			        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
			        if(page==1){
			        	lis=[];
			        }else{
			        	
			        }
			           next(lis.join(''), page < res.pages); 
			      });
				      


			    }
			  });
		});	
	</script>
</body>
</html>


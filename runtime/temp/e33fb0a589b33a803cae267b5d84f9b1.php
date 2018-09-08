<?php /*a:1:{s:73:"C:\phpStudy\PHPTutorial\WWW\new\application\index\view\index\details.html";i:1536385634;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo htmlentities($article['title']); ?>-<?php echo htmlentities($web['title']); ?></title>
	<meta name="keywords" content="<?php echo htmlentities($article['tag']); ?>">
	<meta name="description" content="<?php echo htmlentities($article['sub']); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
					      <input type="text" name="keyword" lay-verify="title" autocomplete="off"  class="layui-input">
					    </div>
					</div>
				</form>
				<div class="blog-nav pull-right">
					<ul class="layui-nav pull-left">
					  <li class="layui-nav-item layui-this"><a href="<?php echo htmlentities($public); ?>index/index/index.html">首页</a></li>
					  <!-- <li class="layui-nav-item"><a href="message.html">留言</a></li>
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
			<div class="container container-message container-details">
					<div class="contar-wrap">
						<div class="item">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<h3><?php echo htmlentities($article['title']); ?></h3>
								<h5>发布于：<span><?php echo htmlentities($article['create_time']); ?></span></h5>
								<p><?php echo $article['content']; ?></p>

								
								<div class="count layui-clear">
									<span class="pull-left">阅读 <em><?php echo htmlentities($article['hit']); ?></em></span>
									<span class="pull-right">
									<?php if($article['iszan']==0): ?>
								<a href="javascript:;" class="like" data="<?php echo htmlentities($article['id']); ?>">点赞(<?php echo htmlentities($article['zan']); ?>)</a>
									
								<?php else: ?>
									<a href="javascript:;" class="like layblog-this" >已赞(<?php echo htmlentities($article['zan']); ?>)</a>
								<?php endif; ?>
								</span>
								</div>
							</div>
						</div>	

						<a name="comment"> </a>
						<div class="comt layui-clear">
							<a href="javascript:;" class="pull-left">评论</a>
							<a href="#comment" class="pull-right">写评论</a>
						</div>
						<div id="LAY-msg-box">
							<?php if(is_array($comment) || $comment instanceof \think\Collection || $comment instanceof \think\Paginator): $i = 0; $__LIST__ = $comment;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
							<div class="info-item">
								<img src="http://mymyjd.cn/images/logo.png" class="info-img layblog-this" style="height: 60px;" title="匿名网友">
								<div class="info-text">
									<p class="title count">
										<span class="name"><?php echo htmlentities(substr($vo['email'],0,1)); ?>***<?php echo htmlentities(substr($vo['email'],4)); ?></span>
										<!-- <span class="info-img like"><i class="layui-icon layui-icon-praise"></i>5.8万</span> -->
									</p>
									<p class="info-intr"><?php echo $vo['content']; ?></p>
								</div>
							</div>
							<?php endforeach; endif; else: echo "" ;endif; ?>	
									
						</div>
						<div class="layui-card">
				        <div class="layui-card-header">发表评论</div>
				        <div class="layui-card-body">
				          <a name="comment"></a>
						<div class="layui-form layui-form-pane" >
							<div class="layui-form-item">
								<textarea id="com" class="layui-textarea"  style="resize:none" placeholder="写点什么啊"></textarea>
								<input type="hidden" name="pid" value="<?php echo htmlentities($article['id']); ?>">
							</div>
							<div class="layui-form-item layui-form-pane">
								 <label class="layui-form-label">您的邮箱</label>
							    <div class="layui-input-block">
							      <input name="email" autocomplete="off" required lay-verify="required|email" placeholder="请输入一个真实的邮箱" class="layui-input" type="email">
							    </div>

							</div>
							
							<div class="layui-input-block" >

				                <button class="layui-btn" lay-submit lay-filter="comment">评论</button>		  	
							</div>
						</div>
				        </div>
				      </div>
						
						
					</div>
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

	</script>
	<script>
		layui.config({
		  base: '<?php echo htmlentities($public); ?>static/blog/js/' 
		}).use('blog');
		layui.use(['layedit','form','jquery'],function(){
			var layedit=layui.layedit,
			form=layui.form,
			$=layui.jquery;
			var edit=layedit.build('com',{
				  tool: ['left', 'center', 'right', 'link', 'face']
				});
			form.on('submit(comment)', function(data){
			    data.field.content=layedit.getContent(edit)

			    $.ajax({
			        url:'<?php echo htmlentities($public); ?>index/blog/comment',
			        type:'POST',
			        data:data.field,
			        success:function(res){
			            if(res.code==200){
			               layer.msg(res.msg, {
								  icon: 1,
								  time: 3000 //2秒关闭（如果不配置，默认是3秒）
								}, function(){
								  location.reload()
								}); 

			            }else{
			                layer.msg(res.msg,{icon:2})
			            }
			        }
			    })

			    return false;
			  });

		})
	</script>
</body>
</html>
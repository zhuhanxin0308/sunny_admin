<?php /*a:1:{s:63:"C:\wamp\www\new\admin\application\index\view\index\details.html";i:1535821998;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>评论-闲言轻博客</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/static/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/blog/css/mian.css" />
	
</head>
<body class="lay-blog">
		<div class="header">
			<div class="header-wrap">
				<h1 class="logo pull-left">
					<a href="index.html">
						<img src="/static/blog/images/logo.png" alt="" class="logo-img">
						<img src="/static/blog/images/logo-text.png" alt="" class="logo-text">
					</a>
				</h1>
				<form class="layui-form blog-seach pull-left" action="">
					<div class="layui-form-item blog-sewrap">
					    <div class="layui-input-block blog-sebox">
					      <i class="layui-icon layui-icon-search"></i>
					      <input type="text" name="title" lay-verify="title" autocomplete="off"  class="layui-input">
					    </div>
					</div>
				</form>
				<div class="blog-nav pull-right">
					<ul class="layui-nav pull-left">
					  <li class="layui-nav-item layui-this"><a href="index.html">首页</a></li>
					  <li class="layui-nav-item"><a href="message.html">留言</a></li>
					  <li class="layui-nav-item"><a href="about.html">关于</a></li>
					</ul>
					<a href="#" class="personal pull-left">
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
				<li><a href="index.html">首页</a></li>
				<li><a href="message.html">留言</a></li>
				<li><a href="about.html">关于</a></li>
			</ul>
		</div>
		<div class="container-wrap">
			<div class="container container-message container-details">
					<div class="contar-wrap">
						<div class="item">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<h3><a href="details.html"><?php echo htmlentities($article['title']); ?></a></h3>
								<h5>发布于：<span><?php echo htmlentities($article['create_time']); ?></span></h5>
								<p><?php echo htmlentities($article['content']); ?></p>

								<img src="static/layui/res/static/images/item.png" alt="">
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
								
								<div class="info-text">
									<p class="title count">
										<span class="name"><?php echo htmlentities($vo['email']); ?></span>
										<span class="info-img like"><i class="layui-icon layui-icon-praise"></i>5.8万</span>
									</p>
									<p class="info-intr"><?php echo htmlentities($vo['content']); ?></p>
								</div>
							</div>
							<?php endforeach; endif; else: echo "" ;endif; ?>	
									
						</div>
						<div>
						<a name="comment"></a>
						<form class="layui-form" action="">
							<div class="layui-form-item layui-form-text">
								<textarea id="com" class="layui-textarea"  style="resize:none" placeholder="写点什么啊"></textarea>
							</div>
							<div class="btnbox">
									<a href="details.html"  id="sure">
							  		确定
							  	</a>
							</div>
						</form>
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
		<script type="text/javascript" src="/static/layui/layui.js"></script>

	</script>
	<script>
		layui.config({
		  base: '/static/blog/js/' 
		}).use('blog');
		layui.use(['layedit','form','jquery'],function(){
			var layedit=layui.layedit,
			form=layui.form,
			$=layui.jquery;
			var edit=layedit.build('com',{
  tool: ['left', 'center', 'right', 'link', 'face']
});

		})
		mZgU_BiQwz4dT_23kipMQQ
	</script>
</body>
</html>
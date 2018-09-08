<?php /*a:1:{s:61:"C:\wamp\www\new\admin\application\index\view\index\index.html";i:1535773658;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo htmlentities($web['title']); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="<?php echo htmlentities($web['keywords']); ?>">
	<meta name="description" content="<?php echo htmlentities($web['descript']); ?>">
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
			<div class="container">
					<div class="contar-wrap">
						<h4 class="item-title">
							<p><i class="layui-icon layui-icon-speaker"></i>公告：<span>欢迎来到我的轻博客</span></p>
						</h4>
						<?php if(is_array($article) || $article instanceof \think\Collection || $article instanceof \think\Paginator): $i = 0; $__LIST__ = $article;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
						<div class="item" style="max-height: 400px;overflow: hidden;">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<h3>
									<a style="display: -webkit-box;max-height: 30.67px;-webkit-line-clamp: 1;-webkit-box-orient: vertical;overflow: hidden;" href="/index/index/details.html?id=<?php echo htmlentities($vo['id']); ?>"><?php echo htmlentities($vo['title']); ?>
									</a>
								</h3>
								<h5>发布于：<span><?php echo htmlentities($vo['create_time']); ?></span></h5>
								<p style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;max-height: 84px;">
									<?php echo htmlentities(strip_tags($vo['content'])); ?>

								</p>
								<div class="layui-row layui-col-space10" style="display: block;width: 100%;height: 120px;overflow: hidden;">
								<div class="layui-col-xs4">
									<div class="grid-demo">
								<img src="/static/blog/images/item.png" style="width: 100%;height: auto;" alt="">
								</div>
								</div>
								<?php if(!empty($vo['img'])): if(is_array($vo['img']) || $vo['img'] instanceof \think\Collection || $vo['img'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['img'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$images): $mod = ($i % 2 );++$i;?>
										<div class="layui-col-xs4">
											<div class="grid-demo">
												<img style="width: 100%;height: auto;" src="<?php echo htmlentities($images); ?>" alt="">
											</div>
										</div>
									<?php endforeach; endif; else: echo "" ;endif; endif; ?>
								</div>
							</div>
							<div class="comment count">
								<a href="/index/index/details.html?id=<?php echo htmlentities($vo['id']); ?>">评论</a>
								<?php if($vo['iszan']==0): ?>
								<a href="javascript:;" class="like" data="<?php echo htmlentities($vo['id']); ?>">点赞(<?php echo htmlentities($vo['zan']); ?>)</a>
									
								<?php else: ?>
									<a href="javascript:;" class="like layblog-this" data="<?php echo htmlentities($vo['id']); ?>">已赞(<?php echo htmlentities($vo['zan']); ?>)</a>
								<?php endif; ?>
								
							</div>
						</div>
						<?php endforeach; endif; else: echo "" ;endif; ?>
						
					
					<div class="item-btn">
						<button class="layui-btn layui-btn-normal">下一页</button>
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
	
	<script type="text/javascript" src="static/layui/layui.js"></script>
	<script>
		layui.config({
		  base: '/static/blog/js/' 
		}).use('blog');	
	</script>
</body>
</html>


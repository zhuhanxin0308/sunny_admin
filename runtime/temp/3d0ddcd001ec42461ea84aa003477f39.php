<?php /*a:1:{s:70:"C:\phpStudy\PHPTutorial\WWW\new\application\index\view\index\q404.html";i:1536384423;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>404 - 安久布鲁斯的博客</title>
	<meta name="keywords" content="安久布鲁斯">
	<meta name="description" content="你的世界，别人永远不会懂。">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<?php echo htmlentities($public); ?>static/layui/css/layui.css">
	<link rel="stylesheet" href="<?php echo htmlentities($public); ?>static/blog/css/mian.css">
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
					  <li class="layui-nav-item layui-this"><a href="<?php echo htmlentities($public); ?>index/index/index.html">首页</a></li>
					 <!--  <li class="layui-nav-item"><a href="message.html">留言</a></li>
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
					<div class="contar-wrap">
						<div style="padding: 150px 0 50px; text-align: center; font-size: 30px; color: #ccc; font-weight: 300;">
							404 您访问的页面找不到了
						</div>
					</div>
			</div>
		</div>
		<div class="footer">
			<p>
				<span>&copy; 2018</span>
				<span><a href="http://sunny.mymyjd.cn" target="_blank">sunny</a></span> 
				<span>MIT license</span>
			</p>
			<p><span>人生就是一场修行</span></p>
		</div>
	<script src="<?php echo htmlentities($public); ?>staitc/layui/layui.js"></script>
	<script>
		layui.config({
		  base: '<?php echo htmlentities($public); ?>static/blog/js/' 
		}).use('blog');	
	</script>
</body>
</html>
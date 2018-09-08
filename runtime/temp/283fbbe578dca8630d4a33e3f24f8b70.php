<?php /*a:1:{s:72:"C:\phpStudy\PHPTutorial\WWW\new\application\index\view\index\search.html";i:1536387975;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo htmlentities($keyword); ?>的搜索结果<?php echo htmlentities($web['title']); ?></title>
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
				<form class="layui-form blog-seach pull-left" action="">
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
					<div class="contar-wrap" id="list">
						<h4 class="item-title">
							<p><i class="layui-icon layui-icon-speaker"></i>公告：<span>欢迎来到我的轻博客</span></p>
						</h4>
						<?php if(is_array($article) || $article instanceof \think\Collection || $article instanceof \think\Paginator): $i = 0; $__LIST__ = $article;if( count($__LIST__)==0 ) : echo "$isempty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
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
								
								<div class="layui-box">
									评分	
									<div id="test3" class="layui-inline">
										<ul class="layui-rate">
											<?php $__FOR_START_26860__=0;$__FOR_END_26860__=floor($vo['rate']);for($i=$__FOR_START_26860__;$i < $__FOR_END_26860__;$i+=1){ ?>

											<li class="layui-inline">
												<i class="layui-icon layui-icon-rate-solid"></i>
											</li>
											<?php } if($vo['rate']-floor($vo['rate'])!=0): ?>
											<li>
												<i class="layui-icon layui-icon-rate-half"></i>
											</li>
											<?php $__FOR_START_3917__=0;$__FOR_END_3917__=4-floor($vo['rate']);for($i=$__FOR_START_3917__;$i < $__FOR_END_3917__;$i+=1){ ?>
											<li class="layui-inline">
												<i class="layui-icon layui-icon-rate"></i>
											</li>
											<?php } else: $__FOR_START_23168__=0;$__FOR_END_23168__=5-(int)($vo['rate']);for($i=$__FOR_START_23168__;$i < $__FOR_END_23168__;$i+=1){ ?>
											<li class="layui-inline">
												<i class="layui-icon layui-icon-rate"></i>
											</li>
											<?php } endif; ?>
											
											
							
										</ul>
									</div><?php echo htmlentities($vo['rate']); ?>分
								</div>
								</div>
							
							
						</div>
						<?php endforeach; endif; else: echo "$isempty" ;endif; ?>
						<div id="page"></div>
					
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
	
	<script src="<?php echo htmlentities($public); ?>staitc/layui/layui.js"></script>
	<script>
		layui.config({
		  base: '<?php echo htmlentities($public); ?>static/blog/js/' 
		}).use(['blog','rate','laypage','jquery'],function(){
			var rate=layui.rate,
			blog=layui.blog,
			laypage=layui.laypage,
			$ = layui.jquery;
			laypage.render({
			  elem: 'page'
			  ,count: <?php echo htmlentities($total); ?>//数据总数，从服务端得到
			  ,curr:location.search.split('&')[2].split('=')[1]
			  ,jump: function(obj, first){
			    //obj包含了当前分页的所有参数，比如：
			    console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
			    console.log(obj.limit); //得到每页显示的条数
			    
			    //首次不执行
			    if(!first){
			    	
			      location.href="<?php echo htmlentities($public); ?>index/index/search?keyword=<?php echo htmlentities($keyword); ?>&limit="+obj.limit+"&page="+obj.curr

			    }
			  }
			});
			
		});	

	</script>
</body>
</html>


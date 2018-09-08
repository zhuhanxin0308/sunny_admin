<?php /*a:1:{s:73:"E:\web\Apache24\htdocs\new\admin\application\index\view\index\search.html";i:1536049049;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo htmlentities($keyword); ?>的搜索结果<?php echo htmlentities($web['title']); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="<?php echo htmlentities($web['keywords']); ?>">
	<meta name="description" content="<?php echo htmlentities($web['descript']); ?>">
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
					      <input type="text" name="keyword" lay-verify="title" autocomplete="off"  class="layui-input">
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
					<div class="contar-wrap" id="list">
						<h4 class="item-title">
							<p><i class="layui-icon layui-icon-speaker"></i>公告：<span>欢迎来到我的轻博客</span></p>
						</h4>
						<?php if(is_array($article) || $article instanceof \think\Collection || $article instanceof \think\Paginator): $i = 0; $__LIST__ = $article;if( count($__LIST__)==0 ) : echo "$isempty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
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
								
								<div class="layui-box">
									评分	
									<div id="test3" class="layui-inline">
										<ul class="layui-rate">
											<?php $__FOR_START_181626555__=0;$__FOR_END_181626555__=floor($vo['rate']);for($i=$__FOR_START_181626555__;$i < $__FOR_END_181626555__;$i+=1){ ?>

											<li class="layui-inline">
												<i class="layui-icon layui-icon-rate-solid"></i>
											</li>
											<?php } if($vo['rate']-floor($vo['rate'])!=0): ?>
											<li>
												<i class="layui-icon layui-icon-rate-half"></i>
											</li>
											<?php $__FOR_START_1117555541__=0;$__FOR_END_1117555541__=4-floor($vo['rate']);for($i=$__FOR_START_1117555541__;$i < $__FOR_END_1117555541__;$i+=1){ ?>
											<li class="layui-inline">
												<i class="layui-icon layui-icon-rate"></i>
											</li>
											<?php } else: $__FOR_START_226554372__=0;$__FOR_END_226554372__=5-(int)($vo['rate']);for($i=$__FOR_START_226554372__;$i < $__FOR_END_226554372__;$i+=1){ ?>
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
	
	<script type="text/javascript" src="/static/layui/layui.js"></script>
	<script>
		layui.config({
		  base: '/static/blog/js/' 
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
			    	
			      location.href="/index/index/search?keyword=<?php echo htmlentities($keyword); ?>&limit="+obj.limit+"&page="+obj.curr

			    }
			  }
			});
			
		});	

	</script>
</body>
</html>


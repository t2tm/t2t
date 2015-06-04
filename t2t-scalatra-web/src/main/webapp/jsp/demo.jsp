<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>大事记发展历程</title>
</head>

<body>
<link href="<%=request.getContextPath()%>/js/plugins/history-date/css/css.css" rel="stylesheet"/>
<script src="<%=request.getContextPath()%>/js/plugins/bootstrap/jquery/jquery.min.js"></script>
<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/common.js"></script>
<script type="text/javascript">
	$(function(){
		//systole();
	});

	function systole(){
		if(!$(".history").length){
			return;
		}
		var $warpEle = $(".history-date"),
				$targetA = $warpEle.find("h2 a,ul li dl dt a"),
				parentH,
				eleTop = [];

		parentH = $warpEle.parent().height();
		$warpEle.parent().css({"height":59});

		setTimeout(function(){

			$warpEle.find("ul").children(":not('h2:first')").each(function(idx){
				eleTop.push($(this).position().top);
				$(this).css({"margin-top":-eleTop[idx]}).children().hide();
			}).animate({"margin-top":0}, 1600).children().fadeIn();

			$warpEle.parent().animate({"height":parentH}, 2600);

			$warpEle.find("ul").children(":not('h2:first')").addClass("bounceInDown").css({"-webkit-animation-duration":"2s","-webkit-animation-delay":"0","-webkit-animation-timing-function":"ease","-webkit-animation-fill-mode":"both"}).end().children("h2").css({"position":"relative"});

		}, 600);

		$targetA.click(function(){
			$(this).parent().css({"position":"relative"});
			$(this).parent().siblings().slideToggle();
			$warpEle.parent().removeAttr("style");
			return false;
		});
	};

	$(document).ready(function () {
		var data = {keyword: '<%=request.getParameter("keyword")%>'}
		JSendAjax("<%=request.getContextPath()%>/HistoryServlet/timeline", data, "json");
	});


	//回调函数
	function JCollBack(data, textStuats) {
		if (data.info == "0") {
			alert(data.msg)
			return;
		}

		var list = data.list;
		var html = ''
		for (var i = 0; i < list.length; i++) {
			html += '<div class="history-date"><ul>'
			if(i == 0){
				html += '<h2 class="first">'
			}else{
				html += '<h2 class="date02">'
			}
			html += '<a href="#nogo">{0}年</a>'.replace("{0}", list[i]['_1'])
			html += '</h2>'
			var items = list[i]['_2'];
			for (var j = 0; j < items.length; j++) {
				html += create(items[j]);
			}
			html += '</ul></div>'
		}
		$('#content').html(html)

		systole();
	}

	function create(bean){
		var html = ''
		html += '<li class="green">'
		html += '		<h3>{0}.{1}<span>{2}</span></h3>'.replace("{0}",bean.mm).replace("{1}",bean.dd).replace("{2}", bean.yy)
		html += '	<dl>'
		html += '		<dt style="width: 700px;">{0}<span style="width: 500px;">{1}</span></dt>'.replace("{0}",bean.message).replace("{1}",bean.note)
		html += '	</dl>'
		html += '</li>'
		return html;
	}
</script>

<div class="demo">
	<div class="history" id="content">
		<div class="history-date" >
			<ul>
				<h2 class="first">
					<a href="#nogo">2012年</a><img src="<%=request.getContextPath()%>/js/plugins/history-date/images/img05.gif" alt="360极速浏览器历程" />
					<a class="more-history" href="http://www.17sucai.com/">来源360：查看更新日志>></a>
				</h2>
				<li class="green">
					<h3>10.08<span>2012</span></h3>
					<dl>
						<dt>发布全新的极速浏览器6.0版本<span>升级极速内核到21.0；全新默认界面；新增小窗口播放功能</span></dt>
					</dl>
				</li>
				<li>
					<h3>07.19<span>2012</span></h3>
					<dl>
						<dt>升级极速内核到20.0<span>HTML5支持度全球最好，达到469分，测试页面： </span></dt>
						<A href="http://html5test.com/" target="_blank">http://html5test.com/</A>
					</dl>
				</li>
				<li>
					<h3>07.02<span>2012</span></h3>
					<dl>
						<dt>升级极速内核到19.0<span>支持网络摄像头，浏览器可直接访问摄像头</span></dt>
					</dl>
				</li>
				<li class="green">
					<h3>06.27<span>2012</span></h3>
					<dl>
						<dt>发布国内首个HTML5实验室<span>大力推广HTML5</span></dt>
					</dl>
				</li>
				<li>
					<h3>06.15<span>2012</span></h3>
					<dl>
						<dt>新增了下载文件前扫描下载链接安全性的功能</dt>
					</dl>
				</li>
				<li>
					<h3>06.05<span>2012</span></h3>
					<dl>
						<dt>W3C联盟首席执行官访华，首站访问360公司</dt>
					</dl>
				</li>
				<li>
					<h3>05.12<span>2012</span></h3>
					<dl>
						<dt>360受邀出席W3C联盟成员见面会议</dt>
					</dl>
				</li>
				<li>
					<h3>05.11<span>2012</span></h3>
					<dl>
						<dt>升级极速内核到18.0<span>新增多用户使用浏览器的功能</span></dt>
					</dl>
				</li>
				<li>
					<h3>05.03<span>2012</span></h3>
					<dl>
						<dt>360极速浏览器用户数突破5000万，活跃用户超2000万</dt>
					</dl>
				</li>
				<li>
					<h3>03.08<span>2012</span></h3>
					<dl>
						<dt>升级极速内核到17.0，提升浏览器速度、增强安全性<span>新增HTTP管线化技术，大幅提升网页加载速度</span></dt>
					</dl>
				</li>
				<li>
					<h3>01.29<span>2012</span></h3>
					<dl>
						<dt>国内率先加入W3C联盟HTML工作组，参与HTML5标准制定</span></dt>
					</dl>
				</li>
			</ul>
		</div>

		<div class="history-date">
			<ul>
				<h2 class="date02"><a href="#nogo">2011年</a></h2>
				<li>
					<h3>12.12<span>2011</span></h3>
					<dl>
						<dt>升级极速内核到16.0，提升浏览器速度、增强安全性<span>新增对360网购保镖支持，保护网上交易安全</span></dt>
					</dl>
				</li>
				<li class="green">
					<h3>11.24<span>2011</span></h3>
					<dl>
						<dt>发布国内首个双核浏览器实验室<span>轻松测试浏览器性能</span></dt>
					</dl>
				</li>
				<li>
					<h3>11.01<span>2011</span></h3>
					<dl>
						<dt>升级极速内核到15.0<span>提升浏览器速度、增强安全性</span></dt>
					</dl>
				</li>
				<li>
					<h3>10.27<span>2011</span></h3>
					<dl>
						<dt>作为国内唯一受邀参展的浏览器厂商，参展2011谷歌开发者日大会</dt>
					</dl>
				</li>
				<li>
					<h3>09.22<span>2011</span></h3>
					<dl>
						<dt>升级极速内核到14.0<span>加入Canvas 2D的GPU加速等特性</span></dt>
					</dl>
				</li>
				<li>
					<h3>09.21<span>2011</span></h3>
					<dl>
						<dt>360极速浏览器用户量超千万，宣布与Chromium社区版本同步</dt>
					</dl>
				</li>
				<li>
					<h3>08.30<span>2011</span></h3>
					<dl>
						<dt>升级极速内核到13.0<span>新增更丰富的皮肤自定义支持</span></dt>
					</dl>
				</li>
				<li>
					<h3>06.22<span>2011</span></h3>
					<dl>
						<dt>新增对crx格式的关联<span>双击crx文件即可安装扩展、皮肤</span></dt>
					</dl>
				</li>
				<li>
					<h3>05.19<span>2011</span></h3>
					<dl>
						<dt>升级极速内核到10.0<span>极速浏览器与安全浏览器网络收藏夹互通</span></dt>
					</dl>
				</li>
				<li>
					<h3>04.07<span>2011</span></h3>
					<dl>
						<dt>推出应用开放平台，与开发者共享用户资源</dt>
					</dl>
				</li>
				<li>
					<h3>03.27<span>2011</span></h3>
					<dl>
						<dt>新增360云安全网址拦截<span>新增IE9高速模式，支持GPU硬件加速</span></dt>
					</dl>
				</li>
			</ul>
		</div>

		<div class="history-date">
			<ul>
				<h2 class="date02"><a href="#nogo">2010年</a></h2>
				<li>
					<h3>12.13<span>2010</span></h3>
					<dl>
						<dt>升级极速内核到7.0<span>提升浏览器速度、增强安全性</span></dt>
					</dl>
				</li>
				<li>
					<h3>10.20<span>2010</span></h3>
					<dl>
						<dt>升级极速内核到6.0<span>新增360帐户，同步网络收藏夹</span></dt>
					</dl>
				</li>
				<li>
					<h3>09.15<span>2010</span></h3>
					<dl>
						<dt>首款双核安全浏览器 - 360极速浏览器发布<span>首个包含沙箱、系统级防注入、完整多进程隔离架构等安全机制的双核浏览器<br><br></span></dt>
						<br><br><br><br>
					</dl>
				</li>
			</ul>
		</div>
	</div>
</div>

</body>
</html>

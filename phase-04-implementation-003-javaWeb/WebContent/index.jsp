<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic008.jpg);
	background-color: #000000;
/* 	background-size:cover; */
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1000px',
			top : '20px'
		}, 30000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');

		$("#hornor").animate({
			fontSize : '30px',
		    top:  '25%',
		    left: '50px'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Liu Bo</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto"></audio>
    <span id="firstline" style="font-size: 30px;color: white">兄弟萌，为了保住刘波这颗火种，熊猫发起了流浪刘波计划，提前将刘波冻结，史称“<span
		style="font-size: 38px; color: red">流浪刘波</span>”计划！
	</span>
	<audio id="waiting" src="/static/audio/waiting.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
<!-- 	<div id="poem-txt" -->
<!-- 		style="display: none; font-size: 18px; color: orange; position:absolute; left :10px;top:50px" > -->
<!-- 		《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: grey"> -->
<!-- 			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地 球白发多。 <br /> 流浪星际家何去，满船清梦出银河。 -->
<!-- 	</div> -->
	<img src="/static/imgs/earth.png"
		style="position: absolute; right: 10px; bottom: 10px; width: 150px"
		onclick="run(this);return false" 
		title="点击后，开始流浪 ！"
		/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="300px" controls="controls"
			src="/static/video/movie.mp4" onended="onVideoEnd();" />
	</div>
	<div id="hornor" style="display:none;position:absolute;left:10x; bottom:10px;color:white;font-size:24px" align="center">2019年我经历了很多事情，也做了很多决定，谨以此向<span style="color:red">《流浪地球》</span>和<span style="color:orange">郭老师</span>表示致敬 ! <br/>感谢您的辛勤教学，希望我明年能考上研究生！！！</div>
</body>
</html>
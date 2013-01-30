/*
// 阿不
// QQ:37348320
// www.raofeng.cn
*/
$(document).ready(function(){
	var imgs=[public+'/images/top_links_blog_gray.png',public+'/images/top_links_telephone_gray.png',public+'/images/view_more_on.png',public+'/images/btn_submit_mouseover.png'];
	loadimg(imgs);
	$(".topLinks a.blog").hover(
		function(){
			$(this).addClass("blogOn");
		},function(){
			$(this).removeClass("blogOn");
	});
	$(".topLinks a.telephone").hover(
		function(){
			$(this).addClass("telephoneOn");
		},function(){
			$(this).removeClass("telephoneOn");
	});
	$(".viewMoreWork a.viewMore").hover(
		function(){
			$(this).addClass("viewMoreOn");
		},function(){
			$(this).removeClass("viewMoreOn");
	});
	$(".submit").hover(
		function(){
			$(this).addClass("submitOn");
		},function(){
			$(this).removeClass("submitOn");
	});
	$(".input").focus(function(){
		$(this).addClass("inputFocus");
	});
	$(".input").blur(function(){
		$(this).removeClass("inputFocus");
	});
	$(".navBody a").mouseover(function(){
		var parentid = $(this).parent().parent().attr("id");
		var index = $("#"+parentid+" a").index(this);
		var width = $("#"+parentid+" a").width();
		$("#"+parentid+" .menuHover").stop().animate({left:width*index},300);
	});
	$(".quickLinks li").hover(
		function(){
			var top = $(this).children("ul").height()+11;
			$(this).children("ul").css("top","-"+top+"px");
			$(this).children("ul").fadeIn(400);
		},function(){
			$(this).children("ul").fadeOut(400);
	});
	$(".selectDrop li").hover(
		function(){
			
		},function(){
			$(this).children("ul").fadeOut(400);
	});
	$(".selectDrop li .selectLink").click(function(){
		$(this).parent().children("ul").fadeIn(400);
	});
	$(".lighterBox .workIcon a").lightBox({
		txtImage: '图片',
		txtOf: ' 总',
		imageLoading: public+'/images/lightbox-ico-loading.gif',
		imageBtnPrev: public+'/images/lightbox-btn-prev.gif',
		imageBtnNext: public+'/images/lightbox-btn-next.gif',
		imageBtnClose: public+'/images/lightbox-btn-close.gif',
		imageBlank: public+'/images/lightbox-blank.gif'
	});
	$(".topLinks a,.workIcon a,.withTip").poshytip({
		className: 'tip-blue',
		bgImageFrameSize: 9,
		offsetX: 0,
		offsetY: 20,
		allowTipHover: true,
		fade: true
	});
	$(".selectDrop li ul li a").click(function(){
		var obj = "#"+$(this).attr("rel");
		var val = $(this).attr("title");
		$(obj+"Txt").text(val);
		$(obj).attr("value",val);
		$(this).parent().parent().fadeOut(200);
	});
	$("a").focus(function(){
		$(this).blur();
	});
});
function goTo(loc,speed){
	if(loc=="top"){
		$.scrollTo(0,speed);
	}else{
		$.scrollTo(loc,speed);
	}
}
function GetRadioValue(RadioName){
	var obj;    
	obj=document.getElementsByName(RadioName);
	if(obj!=null){
		var i;
		for(i=0;i<obj.length;i++){
			if(obj[i].checked){
				return obj[i].value;            
			}
		}
	}
	return false;
}
function contactFormCheck(url){
	var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
	if($("#realname").attr("value")==""){
		inlineMsg('realname','<strong>Error</strong><br />姓名 不能为空！',3);
		return false;
	}else if(!GetRadioValue("gender")){
		inlineMsg('gender','<strong>Error</strong><br />称谓 必须选择！',3);
		return false;
	}else if($("#telephone").attr("value")==""){
		inlineMsg('telephone','<strong>Error</strong><br />回访电话 不能为空！',3);
		return false;
	}else if($("#email").attr("value")!=""&&!$("#email").attr("value").match(emailRegex)){
		inlineMsg('email','<strong>Error</strong><br />回访邮箱 格式不正确！',2);
		return false;
	}else if($("#verify").attr("value")==""){
		inlineMsg('verify','<strong>Error</strong><br />验证码 不能为空！',2);
		return false;
	}
	doPostContactForm(url);
	return false;
}
function doPostContactForm(url){
	var realname = $("#realname").val();
	var gender = GetRadioValue("gender");
	var position = $("#position").val();
	var telephone = $("#telephone").val();
	var email = $("#email").val();
	var brandname = $("#brandname").val();
	var industry = $("#industry").val();
	var message = $("#message").val();
	var verify = $("#verify").val();
	$.ajax({
		type:'post',
		url:url+"/savegbook",
		data:'verify='+verify+'&realname='+realname+'&gender='+gender+'&position='+position+'&telephone='+telephone+'&email='+email+'&brandname='+brandname+'&industry='+industry+'&message='+message,
		cache:false,
		dataType:'json',
		success:function(data){
			if(data.status==1){
				showResult(data.info);
				document.form1.reset();
				$(".selectLink").text("-请选择-");
				$("#position,#industry").attr("value","");
				$("#verifyImg").attr("src",url+"/verify/"+new Date().getTime());
			}else{
				showResult(data.info);
			}
		}
	});
}
function showResult(txt){
	$("#contactFormResult").show();
	$("#contactFormResult").text(txt);
	$("#contactFormResult").css("margin-top","0");
	window.setTimeout(function(){
		$("#contactFormResult").animate({
			marginTop:"-200px",
			opacity:"hide"
		},2000);
	},1500);
}
var loadimg=function(imgs,callback){
	if(!imgs){return false};
	var img=[],len=imgs.length;
	for(var i=0;i<imgs.length;i++){
		img[i]=new Image();
		img[i].src=imgs[i];
	}
}
var currentpage = 1;
function addWorks(url,obj,totalPages){
	currentpage += 1;
	var speed = 800;
	var html = '';
	var pages = '';
	for(var j=1;j<currentpage;j++){
		pages += "<a href=\"#"+j+"\" onclick=\"showWorksByPage('"+url+"','"+obj+"',"+j+");return false;\">"+j+"</a>";
	}
	if(currentpage>totalPages){
		currentpage = 1;
		$("#pagesContainer").html("");
	}
	$.ajax({
		type:'get',
		url:url+"/getworks",
		data:'p='+currentpage,
		cache:false,
		dataType:'json',
		success:function(data){
			var loc = '#work'+data[0].id;
			for(var i=0;i<data.length;i++){
				var images = data[i].images.split("|");
				html += '<div class="lighterBox" id="work'+data[i].id+'">';
				html += '<div class="titleIcon"><img src="'+public_root+'/upload/'+data[i].icons+'" alt="" /></div>';
				html += '<div class="workBody">';
				html += '<div class="workIcon"><a href="'+public_root+'/upload/'+images[1]+'" title="'+data[i].title+'"><img src="'+public_root+'/upload/'+images[0]+'" alt="" /></a></div>';
				html += '<div class="workDesc">';
				html += '<h1 class="title">- '+data[i].title+' '+data[i].timerange+'</h1>';
				html += '<p style="text-indent:24px;">';
				html += data[i].intro;
				html += '</p>';
				html += '</div>';
				html += '</div><!--workBody-->';
				html += '<div class="clear"></div>';
				html += '</div><!--lighterBox-->';
				html += '<div class="blueLine"></div>';
			}
			$(obj).html(html);
			$("#pagesContainer").html(pages);
			$(".lighterBox .workIcon a").lightBox({
				txtImage: '图片',
				txtOf: ' 总',
				imageLoading: public+'/images/lightbox-ico-loading.gif',
				imageBtnPrev: public+'/images/lightbox-btn-prev.gif',
				imageBtnNext: public+'/images/lightbox-btn-next.gif',
				imageBtnClose: public+'/images/lightbox-btn-close.gif',
				imageBlank: public+'/images/lightbox-blank.gif'
			});
			$(".workIcon a").poshytip({
				className: 'tip-blue',
				bgImageFrameSize: 9,
				offsetX: 0,
				offsetY: 20,
				allowTipHover: true,
				fade: true
			});
			$.scrollTo(loc,speed);
		}
	});
}
function showWorksByPage(url,obj,page){
	var speed = 800;
	var html = '';
	$.ajax({
		type:'get',
		url:url+"/getworks",
		data:'p='+page,
		cache:false,
		dataType:'json',
		success:function(data){
			var loc = '#work'+data[0].id;
			for(var i=0;i<data.length;i++){
				var images = data[i].images.split("|");
				html += '<div class="lighterBox" id="work'+data[i].id+'">';
				html += '<div class="titleIcon"><img src="'+public_root+'/upload/'+data[i].icons+'" alt="" /></div>';
				html += '<div class="workBody">';
				html += '<div class="workIcon"><a href="'+public_root+'/upload/'+images[1]+'" title="'+data[i].title+'"><img src="'+public_root+'/upload/'+images[0]+'" alt="" /></a></div>';
				html += '<div class="workDesc">';
				html += '<h1 class="title">- '+data[i].title+' '+data[i].timerange+'</h1>';
				html += '<p style="text-indent:24px;">';
				html += data[i].intro;
				html += '</p>';
				html += '</div>';
				html += '</div><!--workBody-->';
				html += '<div class="clear"></div>';
				html += '</div><!--lighterBox-->';
				html += '<div class="blueLine"></div>';
			}
			$(obj).html(html);
			$(".lighterBox .workIcon a").lightBox({
				txtImage: '图片',
				txtOf: ' 总',
				imageLoading: public+'/images/lightbox-ico-loading.gif',
				imageBtnPrev: public+'/images/lightbox-btn-prev.gif',
				imageBtnNext: public+'/images/lightbox-btn-next.gif',
				imageBtnClose: public+'/images/lightbox-btn-close.gif',
				imageBlank: public+'/images/lightbox-blank.gif'
			});
			$(".workIcon a").poshytip({
				className: 'tip-blue',
				bgImageFrameSize: 9,
				offsetX: 0,
				offsetY: 20,
				allowTipHover: true,
				fade: true
			});
			$.scrollTo(loc,speed);
		}
	});
}
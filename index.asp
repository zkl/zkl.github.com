<!--#include file="Inc/SysProduct.asp" -->
<%
function cutstr(tempstr,tempwid)
if len(tempstr)>tempwid then
cutstr=left(tempstr,tempwid)&"..."
else
cutstr=tempstr
end if
end function%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=SiteTitle%></title>
<meta name="description" content="<%=Sitedes%>" />
<meta name="keywords" content="<%=Sitekey%>" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<!--[if gte IE 6]><link href="css/ie6fix.css" rel="stylesheet" type="text/css" /><![endif]-->
<link href="css/jquery.lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/tip-blue.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="bookmark" href="/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<script type="text/javascript">var public = '';var public_root = '/Public';</script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo-min.js"></script>
<script type="text/javascript" src="js/jquery.lightbox.pack.js"></script>
<script type="text/javascript" src="js/jquery.poshytip.min.js"></script>
<script type="text/javascript" src="js/validator.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/common_s.js"></script>
</head>
<body>
<div class="header"></div>
<div class="wrapperContainer">
  <!--
	<div class="eBookLink"><a class="withTip" href="#down" onclick="window.location.href='#';return false;" title=""></a></div>-->
  <div class="headerContainer">
    <!--    	<div class="topLinks"><a href="http://blog.sina.com.cn/wts" target="_blank" class="blog" title="点击访问我们的博客"></a><a href="#contact" class="telephone" title="点击查看更多联系方式" onclick="goTo('#contact',800);return false;"></a></div>
        <div class="clear"></div>
        <div class="eBookDown"><a href="#down" onclick="window.location.href='';return false;">点击这里下载</a><br />-- 波澜电子书 --</div>
        <div class="brandLife">
            <p>长沙市参天树装饰设计工程有限公司创造并管理品牌形象，通过品牌形象设计、品牌网络形象创建、品牌形象分析、品牌形象定位、品牌形象策略与管理为您实现更具魅力价值的品牌。<br />
            我们在持续完善实效工作体系与品牌商业价值提炼观，为实现品牌的形象创建，为Brand Life注入生生不息的力量。<br />
            现在，您可以通过全新的网站轻松获取和了解品牌形象创建与案例。
            </p>
        </div>-->
    <div class="clear"></div>
  </div>
  <!--headerContainer-->
  <div class="navContainer">
    <!--<span>跳转到：</span>-->
    <div class="navBody" id="cases">
      <div class="menuHover"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">成功案例</a><a href="#about" onClick="goTo('#about',800);return false;">了解我们</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">思想观点</a><a href="#services" onClick="goTo('#services',800);return false;">服务项目</a><a href="#process" onClick="goTo('#process',800);return false;">合作流程</a><a href="#talents" onClick="goTo('#talents',800);return false;">人才招募</a><a href="#contact" onClick="goTo('#contact',800);return false;">联系我们</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">梧桐树设计</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="banner">
    <div class="pic">
      <% 
set rsshow=server.createobject("adodb.recordset")
sql="select * from newpic"
rsshow.open sql,conn,1,3
pic1=rsshow("pic1")
pic2=rsshow("pic2")
pic3=rsshow("pic3")
pic4=rsshow("pic4")
pic5=rsshow("pic5")
pic6=rsshow("pic6")
movie1=rsshow("movie1")
movie2=rsshow("movie2")
movie3=rsshow("movie3")
movie4=rsshow("movie4")
movie5=rsshow("movie5")
movie6=rsshow("movie6")
rsshow.close
set rsshow=nothing
%>
      <script type="text/javascript">
									var swf_width=890;
									var swf_height=430;
									//-- 参数 自动播放时间(秒)|文字颜色|文字背景色|文字背景透明度|按键数字颜色|当前按键颜色|普通按键色彩 --
									var config='8|0xFFFFFF|0x6FACEA|100|0xffffff|0xff0000|0x333333';
									var files='',links='', texts='';

									files+='|<%=pic1%>';
									links+='|<%=movie1%>';
									texts+='';

									files+='|<%=pic2%>';
									links+='|<%=movie2%>';
									texts+='';

									files+='|<%=pic3%>';
									links+='|<%=movie3%>';
									texts+='';

									files+='|<%=pic4%>';
									links+='|<%=movie4%>';
									texts+='';
									files+='|<%=pic5%>';
									links+='|<%=movie5%>';
									texts+='';

									files=files.substring(1);
									links=links.substring(1);
									texts=texts.substring(1);
									document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ swf_width +'" height="'+ swf_height +'">');
									document.write('<param name="movie" value="images/focus.swf" />');
									document.write('<param name="quality" value="high" />');
									document.write('<param name="menu" value="false" />');
									document.write('<param name=wmode value="opaque" />');
									document.write('<param name="FlashVars" value="config='+config+'&bcastr_flie='+files+'&bcastr_link='+links+'&bcastr_title='+texts+'" />');
									document.write('<embed src="images/focus.swf" wmode="opaque" FlashVars="config='+config+'&bcastr_flie='+files+'&bcastr_link='+links+'&bcastr_title='+texts+'& menu="false" quality="high" width="'+ swf_width +'" height="'+ swf_height +'" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
									document.write('</object>');
									</script>
    </div>
    <div class="case_lb"><img src="images/case_lb.jpg" border="0" usemap="#Map">
      <map name="Map" id="Map">
        <area shape="rect" coords="116,-6,314,42" href="index.asp?&BigClass=成功案例&SmallClass=专卖店设计案例#ourWorks" />
        <area shape="rect" coords="337,1,532,43" href="index.asp?&BigClass=成功案例&SmallClass=办公室设计案例#ourWorks" />
        <area shape="rect" coords="555,-1,749,43" href="index.asp?&BigClass=成功案例&SmallClass=展会、展览设计案例#ourWorks" />
      </map>
    </div>
  </div>
  <div class="clear"></div>
  <div class="ourWorks">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/cases.png" alt="成功案例" /></div>
      <div class="titleDesc">
        <h2>每个空间都是独一无二的体验</h2>
        <p>帮助客户深刻理解每个环节在品牌形象建立或是提升中的重要角色，这些工作使我们的客户有信心做出正确的价值创造决策。</p>
      </div>
      <div class="clear"></div>
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <% 
page=clng(request("page"))		 
Set rs=Server.CreateObject("ADODB.RecordSet") 
if BigClass<>"" and SmallClass <>"" then
sql="select * from news where BigClassName='成功案例' and SmallClassName='"&SmallClass&"' and FirstImageName<>'' order by AddDate desc"
rs.Open sql,conn,1,1
elseif BigClass<>"" then
sql="select * from news where BigClassName='成功案例' and FirstImageName<>'' order by AddDate desc"
rs.Open sql,conn,1,1
elseif BigClass="" then
sql="select * from news where bigclassname='成功案例' and FirstImageName<>'' order by AddDate desc"
rs.Open sql,conn,1,1
end if
if rs.eof and rs.bof then
  response.Write("暂时没有记录")
else 
%>
    <div id="ourWorks">
      <% 
rs.PageSize=1
if page=0 then page=1 
pages=rs.pagecount
if page > pages then page=pages
rs.AbsolutePage=page  
for j=1 to rs.PageSize 
%>
      <div class="lighterBox" id="work<%=rs("id")%>">
        <div class="titleIcon"></div>
        <div class="workBody">
          <div class="workIcon"><a href="<%=RS("FirstImageName")%>" title="<%=RS("title")%>"><img src="<%=RS("FirstImageName")%>" alt=""  width="405" height="260"/></a></div>
          <div class="workDesc">
            <!--
            <h1 class="title"></h1>-->
            <div>
              <p><%=RS("content")%> </p>
            </div>
            <div class="clear"></div>
          </div>
        </div>
        <!--workBody-->
        <div class="clear"></div>
      </div>
      <!--lighterBox-->
      <div class="blueLine"></div>
      <!--Line-->
      <%
rs.movenext
if rs.eof then exit for
next
%>
    </div>
  </div>
  <!--ourWorks-->
  <div class="viewMoreWork"> <a href="Index.asp#ourWorks" class="viewMore" onClick="addWorks('Index.asp#ourWorks','#ourWorks',4);"></a>
    <div id="pagesContainer">
      <form method=Post action="Index.asp?BigClass=<%=BigClass%>&SmallClass=<%=SmallClass%>#ourWorks">
        <%dim n
		if recordcount mod pagesize=0 then
    	n= recordcount \ pagesize
  	else
    	n= recordcount \ pagesize+1
  	end if
	if Page<2 then      
    response.write "<a href=Index.asp?BigClass="&BigClass&"&SmallClass="&SmallClass&"&page=" & Page & "#ourWorks>"&Page&"</a>&nbsp;"
  end if
  if rs.pagecount-page<1 then
    response.write "下一页 尾页"
  else
    response.write "<a href=Index.asp?BigClass="&BigClass&"&SmallClass="&SmallClass&"&page=" & (page+1) & "#ourWorks>"
    response.write "下一页</a> <a href=Index.asp?BigClass="&BigClass&"&SmallClass="&SmallClass&"&SmallClass="&SmallClass&"&page="&rs.pagecount&"#ourWorks>尾页</a>"
  end if
   response.write "&nbsp;页次：<strong><font color=red>"&Page&"</font>/"&rs.pagecount&"</strong>页 "
    response.write "&nbsp;共<b><font color='#FF0000'>"&rs.recordcount&"</font></b>条记录 <b>"&rs.pagesize&"</b>条记录/页" 
   response.write " 转到：<input type='text' name='page' size=4 maxlength=10 class=input value="&page&">"
   response.write "page:"& Page &""
   response.write "recordcount:"& recordcount &""
   response.write "pagesize:"& pagesize &""
   for Page = 1 to rs.pagecount   
    		strTemp=strTemp & "'" & Page & "'"
			response.write "pagecount:"& pagecount &""
	    next
%>
      </form>
    </div>
    <% 
end if
rs.close
set rs=nothing
%>
    <div class="clear"></div>
  </div>
  <div class="navContainer">
    <!--<span>跳转到：</span>-->
    <div class="navBody" id="about">
      <div class="menuHover" style="left:75px;"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">成功案例</a><a href="#about" onClick="goTo('#about',800);return false;">了解我们</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">思想观点</a><a href="#services" onClick="goTo('#services',800);return false;">服务项目</a><a href="#process" onClick="goTo('#process',800);return false;">合作流程</a><a href="#talents" onClick="goTo('#talents',800);return false;">人才招募</a><a href="#contact" onClick="goTo('#contact',800);return false;">联系我们</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">梧桐树设计</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="aboutUs">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/about.png" alt="了解我们" /></div>
      <div class="titleDesc">
        <!--        <h2></h2>-->
        <p>专注创造有感染力的商业空间<br />
          长沙参天树工装深信设计改变世界的力量，并一直通过不断丰富的品牌形象资源以及全面的领域服务，为您创造实效与感动。</p>
      </div>
      <div class="clear"></div>
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <div class="contentContainer">
      <div class="contentBody">
        <div class="contentLeft">
          <!--
          <h1 class="title"></h1>-->
          <p style="text-indent:24px;">&nbsp;</p>
        </div>
        <div class="contentRight">
          <!--
          <h1 class="title"></h1>-->
          <p style="text-indent:24px;"><br />
            长沙参天树装饰设计工程有限公司是梧桐树品牌设计基于品牌形象设计+商业空间设计施工二合一商业模式而成立的。只做好工装设计（即商业空间），参天树所有服务项目都基于企业整体品牌形象设计来做商业空间装饰设计，部位装修而装修，这就是参天树和梧桐树二合一商业模式的优势。品牌形象全局策划设计，从平面到空间一体化实现，不脱节，更系统，更具威力。</p>
          <p style="text-indent:24px;"><br />
            <b>服务项目：</b>办公室、专卖店、餐厅、会所、形象墙、展会空间、厂区标识系统、厂房设计。</p>
        </div>
        <div class="clear"></div>
      </div>
      <!--contentBody-->
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <div class="contentContainer">
      <div class="contentBody">
        <div class="contentLeft">
          <!--
          <h1 class="title"></h1>-->
          <img src="images/lxy.jpg" width="415" border="0"/>
          <p style="text-indent:24px;"><br />
            专注！沉静！喜欢黑夜，亦好阅读。信奉最深刻的思想源于孤独的审视，做事追求完美，注重细节！喜欢专研事情的本质，习惯利于本能，依靠大众常识解决问题。多年来，潜心致力于品牌空间一体化设计的探索与实践，痴迷于将设计和商业完美糅合，让设计为商业服务。并兼持“敬天利人、实事求是”的哲学思想不断自我完善；对梦想有着狂热的追求。认为好创意就是找到解决问题的好方法，认为能实现生意目的的设计才是最好的设计。</p>
          <p style="text-indent:24px; vertical-align:top">
          <table width="98%" border="0" style="vertical-align:top">
            <tr>
              <td valign="top">人生信条：真人真心真本事！<br />
                设计总监、设计商人——刘祥耀<br />
                总监专线：180 0841 0200<br />
                </p></td>
              <td valign="bottom"><img src="images/lxy_wb.jpg" border="0"><br /></td>
            </tr>
          </table>
        </div>
        <div class="contentRight" align="left">
          <!--
          <h1 class="title"></h1>-->
          <img src="images/sq.jpg" width="415" border="0"/>
          <p style="text-indent:24px;"><br />
            做事情喜欢专研本质，善于独立思考和学习，具备严谨的系统思维能力。不迷信权威，只相信真理；性格执着坦率，讲究将心比心，好奇心强烈，喜欢商业，相信奇迹，骨子里有着一股子野性气息。踏入设计江湖一来，一直致力于营销策划、广告与商业设计的研究和时间，并兼持“敬天利人、实事求是”的哲学思想不断自我完善；对梦想有着狂热的追求。认为好创意就是找到解决问题的好方法，认为能实现生意母的的设计才是好的设计。</p>
          <p style="text-indent:24px; vertical-align:top">
          <table width="98%" border="0" style="vertical-align:top">
            <tr>
              <td valign="top">人生信条：真人真心真本事！<br />
                设计总监、设计商人——舒起<br />
                总监专线：186 2757 3117<br />
                </p></td>
              <td valign="bottom"><img src="images/sq_wb.jpg" border="0"><br /></td>
            </tr>
          </table>
          </p>
        </div>
        <div class="clear"></div>
      </div>
      <!--contentBody-->
    </div>
  </div>
  <!--aboutUs end-->
  <div class="navContainer">
    <!-- <span>跳转到：</span>-->
    <div class="navBody" id="ideas">
      <div class="menuHover" style="left:75px;"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">成功案例</a><a href="#about" onClick="goTo('#about',800);return false;">了解我们</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">思想观点</a><a href="#services" onClick="goTo('#services',800);return false;">服务项目</a><a href="#process" onClick="goTo('#process',800);return false;">合作流程</a><a href="#talents" onClick="goTo('#talents',800);return false;">人才招募</a><a href="#contact" onClick="goTo('#contact',800);return false;">联系我们</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">梧桐树设计</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="aboutUs">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/ideas.png" alt="思想观点" /></div>
      <div class="titleDesc">
        <!--        <h2></h2>-->
        <p>专注创造有感染力的商业空间<br />
          长沙参天树深信设计改变世界的力量，并一直通过不断丰富的品牌形象资源信息以及全面的领域服务，为您创造实效与感动。</p>
      </div>
      <div class="clear"></div>
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <div class="contentContainer">
      <div class="contentBody">
        <div class="contentLeft">
          <!--
          <h1 class="title"></h1>-->
          <p style="text-indent:24px;"><br />
            一、什么是品牌？<br />
            品牌就是价值认知，打造、盈利、影响靠经营，识别靠符号，个性靠文化，成本最小化、利润最大化，并持续盈利。是企业做品牌的永恒追求。<br />
            <br />
            二、什么是符号？<br />
            符号是是事务意义的识别物，同时也是一个“认知与记忆单位”，人们对事物的印象，是由认知与记忆组成，经营品牌的核心就是将企业自身的独特价值与魅力打造成一个超强的“认知与记忆”识别符号，让消费者一看，就知道你代表什么。<br />
            品牌形象设计的核心，就是将企业自身的独特价值打造成一套可视化的识别符号形象符号系统，没有符号，就没有识别，没有识别，就没有品牌。梧桐树善于创造与众不同的品牌识别符号系统。<br />
            <br />
            三、什么是创意？<br />
            创意就是找到解决问题的好方法。<br />
            <br />
            四、什么是设计？<br />
            把鱼饵放在鱼钩上，钓到了鱼，这个过程就是设计。<br />
            <br />
            五、什么样的设计是好设计？<br />
            成本最小化，效益最大化，又能达到目的的设计就是好设计。好创意在梧桐树也是如此定义。<br />
            <br />
            六、什么是形象？<br />
            形象就是对事物的印象、感觉；形象分为内在和外在两个方面，内在靠经营、修炼，外在可塑造。表里如一是形象的最高境界。<br />
            <br />
            七、什么是外在形象？<br />
            一切可以看到的就是外在形象。
            业的外在形象包括：老板的衣着、身材外貌，员工的衣着、企业品牌视觉形象（VI）、产品外观、产品包装、办公环境、交通工具、专卖店环境、厂房等等；</p>
        </div>
        <div class="contentRight">
          <!--
          <h1 class="title"></h1>-->
          <p style="text-indent:24px;"><br />
            八、什么是内在形象？<br />
            一切看不到，单能感觉得到的就是内在形象。<br />
            企业的内在形象包括：老板的人格、经营理念、经营哲学、员工素质、企业文化、服务态度、产品质量、梧桐树设计等等；<br />
            <br />
            九、对于形象而言，内在是魂，外在是形。<br />
            可以利用外在，但内在要实事求是，因为人都是现实的，群众的眼睛也是雪亮的，金玉其外，败絮其中，经不起考验的伪形象终究是要被唾弃。<br />
            <br />
            十、经营是过程，形象是结果。<br />
            企业所有经营投资行为，都是对品牌形象的长期投资。因为形象就是印象；企业每一次的广告传播最终都在消费者的心里留下一个印象。消费者凭借心里对品牌的印象来判断品牌和选择品牌。因此，企业要建立一个统一的、规范的品牌形象。防止识别混乱和认识混乱。<br />
            <br />
            十一、品牌形象设计的本质是与众不同和与时俱进。<br />
            与众不同才容易识别、记忆和降低传播成本；与时俱进才符合发展规律，才能顺势而为。抓住梧桐树就抓住了本质。<br />
            <br />
            十二、商业空间设计的本质是为产品和服务营造销售销环境、搭舞台。<br />
            环境就是销售现场，卖服务、卖文化、卖产品、卖虚的、卖实的，体验是过程，感受是结果。将环境舞台化就是为您的营销布景。抓住梧桐树就抓住了本质。<br />
            <br />
            十三、成功的商业设计作品有两个作者，一个是甲方，一个是乙方。甲方是把设计作品变成现实的人，乙方是设计“作品”协助甲方实现目的的人。到底能有多成功，看双方合作成效的高低。<br />
            <br />
            十四、品牌是做出来的，成就品牌最伟大的设计师是企业家。</p>
        </div>
        <div class="clear"></div>
      </div>
      <!--contentBody-->
    </div>
  </div>
  <!----ideas end---->
  <div class="navContainer">
    <!--<span>跳转到：</span>-->
    <div class="navBody" id="services">
      <div class="menuHover"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">成功案例</a><a href="#about" onClick="goTo('#about',800);return false;">了解我们</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">思想观点</a><a href="#services" onClick="goTo('#services',800);return false;">服务项目</a><a href="#process" onClick="goTo('#process',800);return false;">合作流程</a><a href="#talents" onClick="goTo('#talents',800);return false;">人才招募</a><a href="#contact" onClick="goTo('#contact',800);return false;">联系我们</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">梧桐树设计</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="ourWorks">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/services.png" alt="服务项目" /></div>
      <div class="titleDesc">
        <h2>因为专注所有更专业</h2>
        <p>长沙参天树装秉持做精、做强的经营理念，深入研究办公环境、专卖零售环境及商业环境的设计，您创造具有强烈感染力的空间设计。</p>
      </div>
      <div class="clear"></div>
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <div id="OurService">
      <%
			Set RS_News_Index = Server.CreateObject("ADODB.Recordset")
SQL_News_Index="select  * from news where  BigClassName='服务项目' and FirstImageName<>'' order by AddDate desc,id desc"
			RS_News_Index.open SQL_News_Index,conn,1,1
			do while not RS_News_Index.eof
			%>
      <div class="lighterBox" id="Service<%=RS_News_Index("id")%>">
        <div class="titleIcon"></div>
        <div class="workBody">
          <div class="workIcon_s"><a href="<%=RS_News_Index("FirstImageName")%>" title="<%=RS_News_Index("title")%>"><img src="<%=RS_News_Index("FirstImageName")%>" alt=""  width="215" height="150"/></a></div>
          <div class="workDesc_s">
            <h1 class="title"><%=RS_News_Index("title")%></h1>
            <div>
              <p><%=RS_News_Index("content")%> </p>
            </div>
            <div class="clear"></div>
          </div>
        </div>
        <!--workBody-->
        <div class="clear"></div>
      </div>
      <!--lighterBox-->
      <div class="blueLine"></div>
      <!--Line-->
      <%
		RS_News_Index.movenext
		loop
		RS_News_Index.close
		set RS_News_Index=nothing
		%>
    </div>
  </div>
  <div class="viewMoreWork">
    <div class="clear"></div>
  </div>
  <!--services end-->
  <div class="navContainer">
    <!--<span id="process">跳转到：</span>-->
    <div class="navBody" id="process">
      <div class="menuHover"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">成功案例</a><a href="#about" onClick="goTo('#about',800);return false;">了解我们</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">思想观点</a><a href="#services" onClick="goTo('#services',800);return false;">服务项目</a><a href="#process" onClick="goTo('#process',800);return false;">合作流程</a><a href="#talents" onClick="goTo('#talents',800);return false;">人才招募</a><a href="#contact" onClick="goTo('#contact',800);return false;">联系我们</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">梧桐树设计</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="ourWorks">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/process.png" alt="合作流程" /></div>
      <div class="titleDesc">
        <!--
        <h2></h2>-->
        <p style="font-size:28px; line-height:28px;">SERVICE PROCESS</p>
      </div>
      <div class="clear"></div>
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <div id="ourWorks">
      <div class="lighterBox" id="Service5">
        <div class="titleIcon"></div>
        <div class="workBody">
          <div class="workIcon_s">&nbsp;</div>
          <div class="workDesc_s">
            <!--
<h1 class="title">专卖店</h1>-->
            <div>
              <p>1、 了解我们——（了解我们的案例工作方法，确认我们的专业能力是否符合您的要求。）<br />
                2、项目征询——（面谈沟通，确认项目需求。我方根据项目具体情况提供设计报价。）<br />
                3、项目立项——（项目合同确认及签订。合同签订后两个工作日内支付预付款。）<br />
                4、项目诊断——（参天树根据客户方情况及竞争对手资料进行研究，建立初步诊断结论。）<br />
                5、项目沟通——（经过项目诊断后，双方就设计构思和愿景设定进行深入沟通。）<br />
                6、设计定稿——（参天树公装就前期沟通成果提供设计方案，双方沟通确认。）<br />
                7、项目实施——（参天树公装依据双方确认的设计方案，提供工程预算，进行工程施工。）<br />
                8、后期服务——（参天树公装对所有项目实行3个月免费咨询，及一年内免费维修。） </p>
            </div>
            <div class="clear"></div>
          </div>
        </div>
        <!--workBody-->
        <div class="clear"></div>
      </div>
      <!--lighterBox-->
      <div class="blueLine"></div>
      <!--Line-->
    </div>
  </div>
  <!--process end-->
  <div class="navContainer">
    <!--<span id="talents">跳转到：</span>-->
    <div class="navBody" id="talents">
      <div class="menuHover" style="left:225px;"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">成功案例</a><a href="#about" onClick="goTo('#about',800);return false;">了解我们</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">思想观点</a><a href="#services" onClick="goTo('#services',800);return false;">服务项目</a><a href="#process" onClick="goTo('#process',800);return false;">合作流程</a><a href="#talents" onClick="goTo('#talents',800);return false;">人才招募</a><a href="#contact" onClick="goTo('#contact',800);return false;">联系我们</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">梧桐树设计</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="contactUs">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/talents.png" alt="人才招募" /></div>
      <div class="titleDesc">
        <p>专注创造有感染力的商业空间<br />
          我们需要你具备乐观的精神，面对任何事务带来的挑战。我们不需要自满高傲的人，我们不需要低落不自信的人。你准备好了吗？ </p>
      </div>
      <div class="clear"></div>
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <div class="contentContainer">
      <div class="contentBody">
        <div class="contentLeft"><img src="images/talents.jpg" border="0"/> </div>
        <div class="contentRight">
          <p>公装设计师（2名）<br />
            1、有梦想，有激情、善沟通<br />
            2、熟练使用相关设计软件（3D Max、CAD、Vray等）<br />
            3、对施工与材料有充分了解<br />
            4、懂预算<br />
            <br />
            设计助理（2名）<br />
            1、相关专业毕业<br />
            2、熟练使用相关设计软件（3D Max、CAD、Vray等）<br />
            3、有梦想、有激情、有团队精神、勤劳刻苦。<br />
            <br />
            有意者请将简历及作品E-mail至382022787@qq.com</p>
        </div>
        <div class="clear"></div>
      </div>
      <!--contentBody-->
    </div>
  </div>
  <!--contactUs-->
  <div class="navContainer">
    <!--<span id="contact">跳转到：</span>-->
    <div class="navBody" id="contact">
      <div class="menuHover" style="left:150px;"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">成功案例</a><a href="#about" onClick="goTo('#about',800);return false;">了解我们</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">思想观点</a><a href="#services" onClick="goTo('#services',800);return false;">服务项目</a><a href="#process" onClick="goTo('#process',800);return false;">合作流程</a><a href="#talents" onClick="goTo('#talents',800);return false;">人才招募</a><a href="#contact" onClick="goTo('#contact',800);return false;">联系我们</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">梧桐树设计</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="wtssj">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/contact.png" alt="联系我们" /></div>
      <div class="titleDesc">
        <p>我们正以无比旺盛的精力与勇敢创新的胆识在开拓事业，对于您的信任，我们将竭尽全力为您提供最具价值的设计来回报您！</p>
      </div>
      <div class="clear"></div>
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <div id="ourWorks">
      <div class="lighterBox">
        <div class="titleIcon"></div>
        <div class="workBody">
          <div class="workIcon_s"><img src="images/contact.jpg" alt="" width="215"/></div>
          <div class="workDesc_s"> <img src="images/map.jpg" width="645" border="0">
            <h1 class="title" style="font-size:16px; color:#00882f" id="wtssj">长沙参天树装饰设计工程有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;梧桐树设计</h1>
            <div>
              <p >需要设计协助您实现生意目的请致电：<br />
                设计专线：0731-89791391   18627573117（舒起）   18008410200（刘祥耀）<br />
                <br />
                业务电话：0731-89791391   89791200<br />
                商用邮箱：906487659@qq.com<br />
                商用QQ：906487659<br />
                创始人微博： </p>
            </div>
            <div class="clear"></div>
          </div>
        </div>
        <!--workBody-->
        <div class="clear"></div>
      </div>
      <!--lighterBox-->
      <div class="blueLine"></div>
      <!--Line-->
    </div>
  </div>
  <!--wtssj-->
</div>
<!--wrapperContainer-->
<div class="footerContainer">
  <div class="footer">
    <div class="logo"><img src="images/logo.png" alt="" /></div>
    <div class="copyRight">
      <p><%=Copyright%></p>
    </div>
    <div class="bottomLinks">
      <ul class="quickLinks" style="display:none">
        <li class="title"><a href="#jumpto" class="drop jumpto" onClick="return false;">跳转到</a>
          <ul>
            <li><a href="#cases" onClick="goTo('#cases',800);return false;">成功案例</a></li>
            <li><a href="#services" onClick="goTo('#services',800);return false;">服务项目</a></li>
            <li><a href="#process" onClick="goTo('#process',800);return false;">合作流程</a></li>
            <li><a href="#about" onClick="goTo('#about',800);return false;">了解我们</a></li>
            <li><a href="#ideas" onClick="goTo('#ideas',800);return false;">思想观点</a></li>
            <li><a href="#talents" onClick="goTo('#talents',800);return false;">人才招募</a></li>
            <li><a href="#contact" onClick="goTo('#contact',800);return false;">联系我们</a></li>
            <li><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">梧桐树设计</a></li>
            <li><a href="http://blog.sina.com.cn/wts" target="_blank">官方博客</a></li>
          </ul>
        </li>
      </ul>
      <input type="button" value="返回顶部" class="btn_top" style="margin-top:12px;" onClick="goTo('top',800);" />
    </div>
  </div>
</div>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=15216085" charset="UTF-8"></script>
<script type="text/javascript" src="http://online.raofeng.cn/app/acd8f8e2bb4f4b02.js" charset="UTF-8"></script>
</body>
</html>
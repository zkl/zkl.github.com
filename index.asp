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
    <!--    	<div class="topLinks"><a href="http://blog.sina.com.cn/wts" target="_blank" class="blog" title="����������ǵĲ���"></a><a href="#contact" class="telephone" title="����鿴������ϵ��ʽ" onclick="goTo('#contact',800);return false;"></a></div>
        <div class="clear"></div>
        <div class="eBookDown"><a href="#down" onclick="window.location.href='';return false;">�����������</a><br />-- ���������� --</div>
        <div class="brandLife">
            <p>��ɳ�в�����װ����ƹ������޹�˾���첢����Ʒ������ͨ��Ʒ��������ơ�Ʒ���������󴴽���Ʒ�����������Ʒ������λ��Ʒ��������������Ϊ��ʵ�ָ���������ֵ��Ʒ�ơ�<br />
            �����ڳ�������ʵЧ������ϵ��Ʒ����ҵ��ֵ�����ۣ�Ϊʵ��Ʒ�Ƶ����󴴽���ΪBrand Lifeע��������Ϣ��������<br />
            ���ڣ�������ͨ��ȫ�µ���վ���ɻ�ȡ���˽�Ʒ�����󴴽��밸����
            </p>
        </div>-->
    <div class="clear"></div>
  </div>
  <!--headerContainer-->
  <div class="navContainer">
    <!--<span>��ת����</span>-->
    <div class="navBody" id="cases">
      <div class="menuHover"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">�ɹ�����</a><a href="#about" onClick="goTo('#about',800);return false;">�˽�����</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">˼��۵�</a><a href="#services" onClick="goTo('#services',800);return false;">������Ŀ</a><a href="#process" onClick="goTo('#process',800);return false;">��������</a><a href="#talents" onClick="goTo('#talents',800);return false;">�˲���ļ</a><a href="#contact" onClick="goTo('#contact',800);return false;">��ϵ����</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">��ͩ�����</a></div>
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
									//-- ���� �Զ�����ʱ��(��)|������ɫ|���ֱ���ɫ|���ֱ���͸����|����������ɫ|��ǰ������ɫ|��ͨ����ɫ�� --
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
        <area shape="rect" coords="116,-6,314,42" href="index.asp?&BigClass=�ɹ�����&SmallClass=ר������ư���#ourWorks" />
        <area shape="rect" coords="337,1,532,43" href="index.asp?&BigClass=�ɹ�����&SmallClass=�칫����ư���#ourWorks" />
        <area shape="rect" coords="555,-1,749,43" href="index.asp?&BigClass=�ɹ�����&SmallClass=չ�ᡢչ����ư���#ourWorks" />
      </map>
    </div>
  </div>
  <div class="clear"></div>
  <div class="ourWorks">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/cases.png" alt="�ɹ�����" /></div>
      <div class="titleDesc">
        <h2>ÿ���ռ䶼�Ƕ�һ�޶�������</h2>
        <p>�����ͻ�������ÿ��������Ʒ�����������������е���Ҫ��ɫ����Щ����ʹ���ǵĿͻ�������������ȷ�ļ�ֵ������ߡ�</p>
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
sql="select * from news where BigClassName='�ɹ�����' and SmallClassName='"&SmallClass&"' and FirstImageName<>'' order by AddDate desc"
rs.Open sql,conn,1,1
elseif BigClass<>"" then
sql="select * from news where BigClassName='�ɹ�����' and FirstImageName<>'' order by AddDate desc"
rs.Open sql,conn,1,1
elseif BigClass="" then
sql="select * from news where bigclassname='�ɹ�����' and FirstImageName<>'' order by AddDate desc"
rs.Open sql,conn,1,1
end if
if rs.eof and rs.bof then
  response.Write("��ʱû�м�¼")
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
    response.write "��һҳ βҳ"
  else
    response.write "<a href=Index.asp?BigClass="&BigClass&"&SmallClass="&SmallClass&"&page=" & (page+1) & "#ourWorks>"
    response.write "��һҳ</a> <a href=Index.asp?BigClass="&BigClass&"&SmallClass="&SmallClass&"&SmallClass="&SmallClass&"&page="&rs.pagecount&"#ourWorks>βҳ</a>"
  end if
   response.write "&nbsp;ҳ�Σ�<strong><font color=red>"&Page&"</font>/"&rs.pagecount&"</strong>ҳ "
    response.write "&nbsp;��<b><font color='#FF0000'>"&rs.recordcount&"</font></b>����¼ <b>"&rs.pagesize&"</b>����¼/ҳ" 
   response.write " ת����<input type='text' name='page' size=4 maxlength=10 class=input value="&page&">"
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
    <!--<span>��ת����</span>-->
    <div class="navBody" id="about">
      <div class="menuHover" style="left:75px;"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">�ɹ�����</a><a href="#about" onClick="goTo('#about',800);return false;">�˽�����</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">˼��۵�</a><a href="#services" onClick="goTo('#services',800);return false;">������Ŀ</a><a href="#process" onClick="goTo('#process',800);return false;">��������</a><a href="#talents" onClick="goTo('#talents',800);return false;">�˲���ļ</a><a href="#contact" onClick="goTo('#contact',800);return false;">��ϵ����</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">��ͩ�����</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="aboutUs">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/about.png" alt="�˽�����" /></div>
      <div class="titleDesc">
        <!--        <h2></h2>-->
        <p>רע�����и�Ⱦ������ҵ�ռ�<br />
          ��ɳ��������װ������Ƹı��������������һֱͨ�����Ϸḻ��Ʒ��������Դ�Լ�ȫ����������Ϊ������ʵЧ��ж���</p>
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
            ��ɳ������װ����ƹ������޹�˾����ͩ��Ʒ����ƻ���Ʒ���������+��ҵ�ռ����ʩ������һ��ҵģʽ�������ġ�ֻ���ù�װ��ƣ�����ҵ�ռ䣩�����������з�����Ŀ��������ҵ����Ʒ���������������ҵ�ռ�װ����ƣ���λװ�޶�װ�ޣ�����ǲ���������ͩ������һ��ҵģʽ�����ơ�Ʒ������ȫ�ֲ߻���ƣ���ƽ�浽�ռ�һ�廯ʵ�֣����ѽڣ���ϵͳ������������</p>
          <p style="text-indent:24px;"><br />
            <b>������Ŀ��</b>�칫�ҡ�ר���ꡢ����������������ǽ��չ��ռ䡢������ʶϵͳ��������ơ�</p>
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
            רע��������ϲ����ҹ������Ķ����ŷ�����̵�˼��Դ�ڹ¶������ӣ�����׷��������ע��ϸ�ڣ�ϲ��ר������ı��ʣ�ϰ�����ڱ��ܣ��������ڳ�ʶ������⡣��������Ǳ��������Ʒ�ƿռ�һ�廯��Ƶ�̽����ʵ���������ڽ���ƺ���ҵ�����ۺϣ������Ϊ��ҵ���񡣲���֡��������ˡ�ʵ�����ǡ�����ѧ˼�벻���������ƣ����������ſ��ȵ�׷����Ϊ�ô�������ҵ��������ĺ÷�������Ϊ��ʵ������Ŀ�ĵ���Ʋ�����õ���ơ�</p>
          <p style="text-indent:24px; vertical-align:top">
          <table width="98%" border="0" style="vertical-align:top">
            <tr>
              <td valign="top">�������������������汾�£�<br />
                ����ܼࡢ������ˡ�������ҫ<br />
                �ܼ�ר�ߣ�180 0841 0200<br />
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
            ������ϲ��ר�б��ʣ����ڶ���˼����ѧϰ���߱��Ͻ���ϵͳ˼ά������������Ȩ����ֻ���������Ը�ִ��̹�ʣ��������ı��ģ�������ǿ�ң�ϲ����ҵ�������漣������������һ����Ұ����Ϣ��̤����ƽ���һ����һֱ������Ӫ���߻����������ҵ��Ƶ��о���ʱ�䣬����֡��������ˡ�ʵ�����ǡ�����ѧ˼�벻���������ƣ����������ſ��ȵ�׷����Ϊ�ô�������ҵ��������ĺ÷�������Ϊ��ʵ������ĸ�ĵ���Ʋ��Ǻõ���ơ�</p>
          <p style="text-indent:24px; vertical-align:top">
          <table width="98%" border="0" style="vertical-align:top">
            <tr>
              <td valign="top">�������������������汾�£�<br />
                ����ܼࡢ������ˡ�������<br />
                �ܼ�ר�ߣ�186 2757 3117<br />
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
    <!-- <span>��ת����</span>-->
    <div class="navBody" id="ideas">
      <div class="menuHover" style="left:75px;"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">�ɹ�����</a><a href="#about" onClick="goTo('#about',800);return false;">�˽�����</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">˼��۵�</a><a href="#services" onClick="goTo('#services',800);return false;">������Ŀ</a><a href="#process" onClick="goTo('#process',800);return false;">��������</a><a href="#talents" onClick="goTo('#talents',800);return false;">�˲���ļ</a><a href="#contact" onClick="goTo('#contact',800);return false;">��ϵ����</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">��ͩ�����</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="aboutUs">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/ideas.png" alt="˼��۵�" /></div>
      <div class="titleDesc">
        <!--        <h2></h2>-->
        <p>רע�����и�Ⱦ������ҵ�ռ�<br />
          ��ɳ������������Ƹı��������������һֱͨ�����Ϸḻ��Ʒ��������Դ��Ϣ�Լ�ȫ����������Ϊ������ʵЧ��ж���</p>
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
            һ��ʲô��Ʒ�ƣ�<br />
            Ʒ�ƾ��Ǽ�ֵ��֪�����졢ӯ����Ӱ�쿿��Ӫ��ʶ�𿿷��ţ����Կ��Ļ����ɱ���С����������󻯣�������ӯ��������ҵ��Ʒ�Ƶ�����׷��<br />
            <br />
            ����ʲô�Ƿ��ţ�<br />
            �����������������ʶ���ͬʱҲ��һ������֪����䵥λ�������Ƕ������ӡ��������֪�������ɣ���ӪƷ�Ƶĺ��ľ��ǽ���ҵ����Ķ��ؼ�ֵ�����������һ����ǿ�ġ���֪����䡱ʶ����ţ���������һ������֪�������ʲô��<br />
            Ʒ��������Ƶĺ��ģ����ǽ���ҵ����Ķ��ؼ�ֵ�����һ�׿��ӻ���ʶ������������ϵͳ��û�з��ţ���û��ʶ��û��ʶ�𣬾�û��Ʒ�ơ���ͩ�����ڴ������ڲ�ͬ��Ʒ��ʶ�����ϵͳ��<br />
            <br />
            ����ʲô�Ǵ��⣿<br />
            ��������ҵ��������ĺ÷�����<br />
            <br />
            �ġ�ʲô����ƣ�<br />
            ����������㹳�ϣ��������㣬������̾�����ơ�<br />
            <br />
            �塢ʲô��������Ǻ���ƣ�<br />
            �ɱ���С����Ч����󻯣����ܴﵽĿ�ĵ���ƾ��Ǻ���ơ��ô�������ͩ��Ҳ����˶��塣<br />
            <br />
            ����ʲô������<br />
            ������Ƕ������ӡ�󡢸о��������Ϊ���ں������������棬���ڿ���Ӫ�����������ڿ����졣������һ���������߾��硣<br />
            <br />
            �ߡ�ʲô����������<br />
            һ�п��Կ����ľ�����������
            ҵ����������������ϰ�����š������ò��Ա�������š���ҵƷ���Ӿ�����VI������Ʒ��ۡ���Ʒ��װ���칫��������ͨ���ߡ�ר���껷���������ȵȣ�</p>
        </div>
        <div class="contentRight">
          <!--
          <h1 class="title"></h1>-->
          <p style="text-indent:24px;"><br />
            �ˡ�ʲô����������<br />
            һ�п����������ܸо��õ��ľ�����������<br />
            ��ҵ����������������ϰ���˸񡢾�Ӫ�����Ӫ��ѧ��Ա�����ʡ���ҵ�Ļ�������̬�ȡ���Ʒ��������ͩ����Ƶȵȣ�<br />
            <br />
            �š�����������ԣ������ǻ꣬�������Ρ�<br />
            �����������ڣ�������Ҫʵ�����ǣ���Ϊ�˶�����ʵ�ģ�Ⱥ�ڵ��۾�Ҳ��ѩ���ģ��������⣬�������У����������α�����վ���Ҫ��������<br />
            <br />
            ʮ����Ӫ�ǹ��̣������ǽ����<br />
            ��ҵ���о�ӪͶ����Ϊ�����Ƕ�Ʒ������ĳ���Ͷ�ʡ���Ϊ�������ӡ����ҵÿһ�εĹ�洫�����ն��������ߵ���������һ��ӡ��������ƾ�������Ʒ�Ƶ�ӡ�����ж�Ʒ�ƺ�ѡ��Ʒ�ơ���ˣ���ҵҪ����һ��ͳһ�ġ��淶��Ʒ�����󡣷�ֹʶ����Һ���ʶ���ҡ�<br />
            <br />
            ʮһ��Ʒ��������Ƶı��������ڲ�ͬ����ʱ�����<br />
            ���ڲ�ͬ������ʶ�𡢼���ͽ��ʹ����ɱ�����ʱ����ŷ��Ϸ�չ���ɣ�����˳�ƶ�Ϊ��ץס��ͩ����ץס�˱��ʡ�<br />
            <br />
            ʮ������ҵ�ռ���Ƶı�����Ϊ��Ʒ�ͷ���Ӫ������������������̨��<br />
            �������������ֳ������������Ļ�������Ʒ������ġ���ʵ�ģ������ǹ��̣������ǽ������������̨������Ϊ����Ӫ��������ץס��ͩ����ץס�˱��ʡ�<br />
            <br />
            ʮ�����ɹ�����ҵ�����Ʒ���������ߣ�һ���Ǽ׷���һ�����ҷ����׷��ǰ������Ʒ�����ʵ���ˣ��ҷ�����ơ���Ʒ��Э���׷�ʵ��Ŀ�ĵ��ˡ��������ж�ɹ�����˫��������Ч�ĸߵ͡�<br />
            <br />
            ʮ�ġ�Ʒ�����������ģ��ɾ�Ʒ����ΰ������ʦ����ҵ�ҡ�</p>
        </div>
        <div class="clear"></div>
      </div>
      <!--contentBody-->
    </div>
  </div>
  <!----ideas end---->
  <div class="navContainer">
    <!--<span>��ת����</span>-->
    <div class="navBody" id="services">
      <div class="menuHover"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">�ɹ�����</a><a href="#about" onClick="goTo('#about',800);return false;">�˽�����</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">˼��۵�</a><a href="#services" onClick="goTo('#services',800);return false;">������Ŀ</a><a href="#process" onClick="goTo('#process',800);return false;">��������</a><a href="#talents" onClick="goTo('#talents',800);return false;">�˲���ļ</a><a href="#contact" onClick="goTo('#contact',800);return false;">��ϵ����</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">��ͩ�����</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="ourWorks">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/services.png" alt="������Ŀ" /></div>
      <div class="titleDesc">
        <h2>��Ϊרע���и�רҵ</h2>
        <p>��ɳ������װ������������ǿ�ľ�Ӫ��������о��칫������ר�����ۻ�������ҵ��������ƣ����������ǿ�Ҹ�Ⱦ���Ŀռ���ơ�</p>
      </div>
      <div class="clear"></div>
    </div>
    <!--blueBox-->
    <div class="blueLine"></div>
    <!--Line-->
    <div id="OurService">
      <%
			Set RS_News_Index = Server.CreateObject("ADODB.Recordset")
SQL_News_Index="select  * from news where  BigClassName='������Ŀ' and FirstImageName<>'' order by AddDate desc,id desc"
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
    <!--<span id="process">��ת����</span>-->
    <div class="navBody" id="process">
      <div class="menuHover"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">�ɹ�����</a><a href="#about" onClick="goTo('#about',800);return false;">�˽�����</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">˼��۵�</a><a href="#services" onClick="goTo('#services',800);return false;">������Ŀ</a><a href="#process" onClick="goTo('#process',800);return false;">��������</a><a href="#talents" onClick="goTo('#talents',800);return false;">�˲���ļ</a><a href="#contact" onClick="goTo('#contact',800);return false;">��ϵ����</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">��ͩ�����</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="ourWorks">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/process.png" alt="��������" /></div>
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
<h1 class="title">ר����</h1>-->
            <div>
              <p>1�� �˽����ǡ������˽����ǵİ�������������ȷ�����ǵ�רҵ�����Ƿ��������Ҫ�󡣣�<br />
                2����Ŀ��ѯ��������̸��ͨ��ȷ����Ŀ�����ҷ�������Ŀ��������ṩ��Ʊ��ۡ���<br />
                3����Ŀ���������Ŀ��ͬȷ�ϼ�ǩ������ͬǩ����������������֧��Ԥ�����<br />
                4����Ŀ��ϡ��������������ݿͻ�������������������Ͻ����о�������������Ͻ��ۡ���<br />
                5����Ŀ��ͨ������������Ŀ��Ϻ�˫������ƹ�˼��Ը���趨�������빵ͨ����<br />
                6����ƶ��塪������������װ��ǰ�ڹ�ͨ�ɹ��ṩ��Ʒ�����˫����ͨȷ�ϡ���<br />
                7����Ŀʵʩ��������������װ����˫��ȷ�ϵ���Ʒ������ṩ����Ԥ�㣬���й���ʩ������<br />
                8�����ڷ��񡪡�����������װ��������Ŀʵ��3���������ѯ����һ�������ά�ޡ��� </p>
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
    <!--<span id="talents">��ת����</span>-->
    <div class="navBody" id="talents">
      <div class="menuHover" style="left:225px;"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">�ɹ�����</a><a href="#about" onClick="goTo('#about',800);return false;">�˽�����</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">˼��۵�</a><a href="#services" onClick="goTo('#services',800);return false;">������Ŀ</a><a href="#process" onClick="goTo('#process',800);return false;">��������</a><a href="#talents" onClick="goTo('#talents',800);return false;">�˲���ļ</a><a href="#contact" onClick="goTo('#contact',800);return false;">��ϵ����</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">��ͩ�����</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="contactUs">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/talents.png" alt="�˲���ļ" /></div>
      <div class="titleDesc">
        <p>רע�����и�Ⱦ������ҵ�ռ�<br />
          ������Ҫ��߱��ֹ۵ľ�������κ������������ս�����ǲ���Ҫ�����߰����ˣ����ǲ���Ҫ���䲻���ŵ��ˡ���׼�������� </p>
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
          <p>��װ���ʦ��2����<br />
            1�������룬�м��顢�ƹ�ͨ<br />
            2������ʹ�������������3D Max��CAD��Vray�ȣ�<br />
            3����ʩ��������г���˽�<br />
            4����Ԥ��<br />
            <br />
            �������2����<br />
            1�����רҵ��ҵ<br />
            2������ʹ�������������3D Max��CAD��Vray�ȣ�<br />
            3�������롢�м��顢���ŶӾ������Ϳ̿ࡣ<br />
            <br />
            �������뽫��������ƷE-mail��382022787@qq.com</p>
        </div>
        <div class="clear"></div>
      </div>
      <!--contentBody-->
    </div>
  </div>
  <!--contactUs-->
  <div class="navContainer">
    <!--<span id="contact">��ת����</span>-->
    <div class="navBody" id="contact">
      <div class="menuHover" style="left:150px;"></div>
      <div class="menuBody"> <a href="#cases" onClick="goTo('#cases',800);return false;">�ɹ�����</a><a href="#about" onClick="goTo('#about',800);return false;">�˽�����</a><a href="#ideas" onClick="goTo('#ideas',800);return false;">˼��۵�</a><a href="#services" onClick="goTo('#services',800);return false;">������Ŀ</a><a href="#process" onClick="goTo('#process',800);return false;">��������</a><a href="#talents" onClick="goTo('#talents',800);return false;">�˲���ļ</a><a href="#contact" onClick="goTo('#contact',800);return false;">��ϵ����</a><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">��ͩ�����</a></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="wtssj">
    <div class="blueBox">
      <div class="titleIcon"><img src="images/contact.png" alt="��ϵ����" /></div>
      <div class="titleDesc">
        <p>���������ޱ���ʢ�ľ������¸Ҵ��µĵ�ʶ�ڿ�����ҵ�������������Σ����ǽ��߾�ȫ��Ϊ���ṩ��߼�ֵ��������ر�����</p>
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
            <h1 class="title" style="font-size:16px; color:#00882f" id="wtssj">��ɳ������װ����ƹ������޹�˾&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ͩ�����</h1>
            <div>
              <p >��Ҫ���Э����ʵ������Ŀ�����µ磺<br />
                ���ר�ߣ�0731-89791391   18627573117������   18008410200������ҫ��<br />
                <br />
                ҵ��绰��0731-89791391   89791200<br />
                �������䣺906487659@qq.com<br />
                ����QQ��906487659<br />
                ��ʼ��΢���� </p>
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
        <li class="title"><a href="#jumpto" class="drop jumpto" onClick="return false;">��ת��</a>
          <ul>
            <li><a href="#cases" onClick="goTo('#cases',800);return false;">�ɹ�����</a></li>
            <li><a href="#services" onClick="goTo('#services',800);return false;">������Ŀ</a></li>
            <li><a href="#process" onClick="goTo('#process',800);return false;">��������</a></li>
            <li><a href="#about" onClick="goTo('#about',800);return false;">�˽�����</a></li>
            <li><a href="#ideas" onClick="goTo('#ideas',800);return false;">˼��۵�</a></li>
            <li><a href="#talents" onClick="goTo('#talents',800);return false;">�˲���ļ</a></li>
            <li><a href="#contact" onClick="goTo('#contact',800);return false;">��ϵ����</a></li>
            <li><a href="#wtssj" onClick="goTo('#wtssj',800);return false;">��ͩ�����</a></li>
            <li><a href="http://blog.sina.com.cn/wts" target="_blank">�ٷ�����</a></li>
          </ul>
        </li>
      </ul>
      <input type="button" value="���ض���" class="btn_top" style="margin-top:12px;" onClick="goTo('top',800);" />
    </div>
  </div>
</div>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=15216085" charset="UTF-8"></script>
<script type="text/javascript" src="http://online.raofeng.cn/app/acd8f8e2bb4f4b02.js" charset="UTF-8"></script>
</body>
</html>
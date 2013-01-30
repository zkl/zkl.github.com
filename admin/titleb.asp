<%
function titleb(str,strlen)
	dim l,t,c, i
	l=len(str)
	t=0
	for i=1 to l
	c=Abs(Asc(Mid(str,i,1)))
	if c>255 then
	t=t+2
	else
	t=t+1
	end if
	if t>=strlen then
	titleb=left(str,i)&"…"
	exit for
	else
	titleb=str&""
	end if
	next
end function

function lmpath()
	newsid=trim(request("newsid"))
	if newsid<>"" then
	set rs = Server.CreateObject("ADODB.RecordSet")
	rs.Open "select * from [news] where id="&newsid&" order by id desc",conn,1,1
	if rs.recordcount<>0 then
		lm3=rs("lm3")
		lm2=rs("lm2")
		lm1=rs("lm")
		title=rs("title")
		lmpath="<a href=news_view.asp?newsid="&newsid&">"&title&"</a>"
	end if
	rs.close
	set rs=nothing

	
	if lm3<>"0" then
		set rs = Server.CreateObject("ADODB.RecordSet")
		rs.Open "select * from [lm] where id="&lm3&" order by id desc",conn,1,1
		if rs.recordcount<>0 then
			lm3name=rs("lm3")
			lmpath="<a href=news_more.asp?lm2="&rs("id")&">"&lm3name&"</a> - "&lmpath
		end if
		rs.close
		set rs=nothing
	end if


	if lm2<>"0" then
		set rs = Server.CreateObject("ADODB.RecordSet")
		rs.Open "select * from [lm] where id="&lm2&" order by id desc",conn,1,1
		if rs.recordcount<>0 then
			lm2name=rs("lm2")
			lmpath="<a href=news_more.asp?lm2="&rs("id")&">"&lm2name&"</a> - "&lmpath
		end if
		rs.close
		set rs=nothing

	end if

	if lm1<>"0" then
		set rs = Server.CreateObject("ADODB.RecordSet")
		rs.Open "select * from [lm] where id="&lm1&" order by id desc",conn,1,1
		if rs.recordcount<>0 then
			lmname=rs("lm")
			lmpath="<a href=news_more.asp?lm2="&rs("id")&">"&lmname&"</a> - "&lmpath
		end if
		rs.close
		set rs=nothing
	end if

	end if
		
end function


function lmaa()
	if lm2="" then lm2=0


		set rs = Server.CreateObject("ADODB.RecordSet")
		rs.Open "select * from [lm] where id="&lm2&" and lm3<>'' order by id desc",conn,1,1
		if rs.recordcount<>0 then
			lm3name=rs("lm3")
			lmaa="<a href=news_more.asp?lm2="&rs("id")&">"&lm3name&"</a> - "
			lm2=rs("lmID")
		end if
		rs.close
		set rs=nothing

		set rs = Server.CreateObject("ADODB.RecordSet")
		rs.Open "select * from [lm] where id="&lm2&" and lm2<>'' order by id desc",conn,1,1
		if rs.recordcount<>0 then
			lm2name=rs("lm2")
			lmaa="<a href=news_more.asp?lm2="&rs("id")&">"&lm2name&"</a> - "&lmaa
			lm2=rs("lmid")
		end if
		rs.close
		set rs=nothing


		set rs = Server.CreateObject("ADODB.RecordSet")
		rs.Open "select * from [lm] where id="&lm2&" and lm<>'' order by id desc",conn,1,1
		if rs.recordcount<>0 then
			lmname=rs("lm")
			lmaa="<a href=news_more.asp?lm2="&rs("id")&">"&lmname&"</a> - "&lmaa
		end if
		rs.close

		
end function


function newsx()
	set rsnewsx = Server.CreateObject("ADODB.RecordSet")
	rsnewsx.Open "select * from [config]",conn,1,1
	newsx=int(rsnewsx("newsx"))
	rsnewsx.close
	set rsnewsx=nothing
end function


function pl()
	set rsnewsx = Server.CreateObject("ADODB.RecordSet")
	rsnewsx.Open "select * from [config]",conn,1,1
	pl=int(rsnewsx("pl"))
	rsnewsx.close
	set rsnewsx=nothing
end function

function config(zd)
	set rsnewsx = Server.CreateObject("ADODB.RecordSet")
	rsnewsx.Open "select "&zd&" from [config]",conn,1,1
	config=rsnewsx(""&zd&"")
	rsnewsx.close
	set rsnewsx=nothing
end function


function chkhtm(stra)
   stra=replace(stra,"<","&lt;")
   stra=replace(stra,">","&gt;")
   stra=replace(stra,"'","")
   stra=replace(stra,"(","（")
   stra=replace(stra,")","）")
   stra=replace(stra,";","；")
   stra=replace(stra,",","，")
   stra=replace(stra,"%","％")
   stra=replace(stra,"+","＋")
   chkhtm=stra
end function

Function glhtml(title)
	title=replace(title,"&nbsp;"," ")
	title=replace(title," ","")
	title=replace(title,chr(32),"")
	title=replace(title,chr(13),"")
	title=replace(title,chr(10),"")
	title=replace(title,chr(9),"")
	title=replace(title,"　","")
	title=replace(title,"""","")
	title=replace(title,"'","")
	set reg=new regexp
	reg.IgnoreCase=true
	reg.Global=true
	reg.Pattern="<(.+?)>"
	glhtml=reg.Replace(title,"")
	set reg=nothing
End Function

Function finddir(filepath)
	finddir=""
	for i=1 to len(filepath)
	if left(right(filepath,i),1)="/" or left(right(filepath,i),1)="\" then
	  abc=i
	  exit for
	end if
	next
	if abc <> 1 then
	finddir=left(filepath,len(filepath)-abc+1)
	end if
end Function


function GoogleSo()
		GoogleSo="<center><hr size=1>"
		GoogleSo=GoogleSo&"<center>"
		GoogleSo=GoogleSo&"<form method='get' name=E_FORM action='http://www.google.cn/custom' target=_blank>"
		GoogleSo=GoogleSo&"<table bgcolor='#ffffff'>"
		GoogleSo=GoogleSo&"<tr><td nowrap='nowrap' valign='top' align='left' height='32'>"
		GoogleSo=GoogleSo&"<label for='sbi' style='display: none'>输入您的搜索字词</label>"
		GoogleSo=GoogleSo&"<input type='text' name='q' size='30' maxlength='255' value='"&glhtml(title)&"' id='sbi'></input>"
		GoogleSo=GoogleSo&"<label for='sbb' style='display: none'>提交搜索表单</label>"
		GoogleSo=GoogleSo&"<input type='submit' name='sa' value='Google搜索' id='sbb'></input>"
		GoogleSo=GoogleSo&"<input type='hidden' name='client' value='pub-7709734864915288'></input>"
		GoogleSo=GoogleSo&"<input type='hidden' name='forid' value='1'></input>"
		'GoogleSo=GoogleSo&"<input type='hidden' name='ie' value='utf-8'></input>"
		'GoogleSo=GoogleSo&"<input type='hidden' name='oe' value='utf-8'></input>"
		GoogleSo=GoogleSo&"<input type='hidden' name='cof' value='GALT:#008000;GL:1;DIV:#336699;VLC:663399;AH:center;BGC:FFFFFF;LBGC:336699;ALC:0000FF;LC:0000FF;T:000000;GFNT:0000FF;GIMP:0000FF;LH:43;LW:100;L:http://www.google.cn/logos/Logo_40wht.gif;S:http://;LP:1;FORID:1'></input>"
		GoogleSo=GoogleSo&"<input type='hidden' name='hl' value='zh-CN'></input>"
		GoogleSo=GoogleSo&"</td></tr></table>"
		GoogleSo=GoogleSo&"</form>"
		GoogleSo=GoogleSo&"</center>"

end function


function nrreplace()


	pp=""
	pp=pp&"&nbsp;"
	pp=pp&"<a name=pl><img src=../../../../images/bbstitle.gif></a><a href=#pl onclick='window.open(""../../../../NewsPL.asp?id="&newsid&""",""newsview"",""width=680,height=400,top=70,left=150,scrollbars=yes"" )'  title='"&title&"'>发表,查看评论</a>&nbsp;"
	pp=pp&"<img border='0' src='../../../../images/print.gif' width='16' height='16'><a href='javascript:window.print()'>打印本页</a>&nbsp;"
	pp=pp&"<img border='0' src='../../../../images/soso.gif'><a href=../../../../soso.asp?word="&left(title,5)&" target=_blank>搜索相关信息</a>"

    lmid=lm3
    if lmid="0" or lmid="" then lmid=lm2
    if lmid="0" or lmid="" then lmid=lm1
        
		sql2 = "select * from lm where mb<>'' and  id="&clng(lmid)
		Set rs2 = Server.CreateObject("ADODB.RecordSet")
		rs2.Open sql2,conn,1,1
		
		if rs2.recordcount<>0 then
			
			lm=rs2("lm")&rs2("lm2")&rs2("lm3")
			
			mbid=rs2("mb")
			
			sql3 = "select * from newsmb where id="&mbid
			Set rs3 = Server.CreateObject("ADODB.RecordSet")
			rs3.Open sql3,conn,1,1
			
			if htitle="" then htitle="&nbsp;"
			
				if rs3.recordcount<>0 then
				  updown=rs3("updown")
				  nr=rs3("mid")
				  
				  if config("ggso")="1" then
				  	content=content&GoogleSo()
				  end if
				  			
				  if config("xuasGG")="1" then
					nrGG="<center><iframe name='xGGI1' src='http://www.xuas.com/Other/GoogleAD/Google468x60-FFFFFF.asp' marginwidth='1' marginheight='1' height='60' width='468' scrolling='no' border='0' frameborder='0'></iframe></center><BR><BR>"
				  	if config("xuasGGWZ")="1" then
						content=nrgg+content
					elseif config("xuasGGWZ")="2" then
						content=content+nrgg
				  	end if
				  end if
				  
					webxgnews=trim(xgnews)
					if webxgnews="" then webxgnews=left(glhtml(title),5)
					if webxgnews<>"" then
						webxgnews=replace(webxgnews,"[","")
						webxgnews=replace(webxgnews,"]","")
					end if
	  
				  if pl()=1 then ppll="<BR><hR size=1><script language='javascript' charset='gb2312' src='../../../../js_news_pl2.asp?id="&newsid&"'></script>"
	  
				  nr=replace(nr,"$$路径$$","<script language='javascript' type='text/javascript' charset='gb2312' src='../../../../js-path.asp?id="&newsid&"'></script>")
				  nr=replace(nr,"$$副标题$$",htitle)
				  nr=replace(nr,"$$标题$$",title)
				  nr=replace(nr,"$$栏目名$$",lmname)
				  nr=replace(nr,"$$时间$$",addtime)
				  nr=replace(nr,"$$访问量$$","<script language='javascript' type='text/javascript' src='../../../../JS-hit.asp?id="&newsid&"'></script>")
				  nr=replace(nr,"$$内容$$",content)
				  nr=replace(nr,"$$来源$$",zz)
				  nr=replace(nr,"$$评论$$",ppll)
				  nr=replace(nr,"$$打印$$",pp)
				  nr=replace(nr,"$$工具栏$$",pp)
				  nr=replace(nr,"$$相关$$","<script language='javascript' type='text/javascript' charset='gb2312'  src='../../../../JS-XGXX.asp?id="&newsid&"&xgnews="&webxgnews&"'></script>")
				  nr=replace(nr,"$$NEWSID$$",newsid)
				
				  if updown=0 then
					    nr=replace(nr,"$$上下条$$","")
				  else  
					    nr=replace(nr,"$$上下条$$","<script language='javascript' type='text/javascript' charset='gb2312'  src='../../../../JS-ShangXiaTiao.asp?id="&newsid&"'></script>")
				  end if
				  
				  content=nr
				
				else
					  response.write "<script>alert('模版设置不正确。');</script>"
					  Response.end
				end if 
	
			rs3.close:set rs3=nothing
		
		else
		  Response.Write "<script>alert('此栏目模版设置不正确');</script>"
		  Response.end
		  mbid=1
		end if
		rs2.close:set rs2=nothing
		
end function


function hrefID(ID,filename)
	if filename<>"0" then
		hrefid=""&filename
	else
		hrefid="News_View.asp?NewsID="&ID
	end if
end function


function sdDel(purl) 
	on error resume next 
	dim fso 
	set fso=server.CreateObject("Scripting.FileSystemObject")   
	fso.DeleteFile server.MapPath(purl),true    
	set fso=nothing 
end function
%>
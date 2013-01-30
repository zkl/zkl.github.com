<META http-equiv=Content-Type content="text/html; charset=gb2312"> 
<!--#Include File="Check_Sql.asp"-->
<!--#include file="Conn.asp"-->
<!--#include file="Config.asp"-->
<!--#include file="Function.asp"-->
<%
dim strFileName,MaxPerPage,ShowSmallClassType
dim totalPut,CurrentPage,TotalPages
dim BeginTime,EndTime
dim founderr, errmsg
dim enBigClassName,enSmallClassName,keyword,strField
dim rs,sql,sqlDown,rsDown,sqlSearch,rsSearch,sqlBigClass,rsBigClass,sqlBigClass_Down
BeginTime=Timer
enBigClassName=Trim(request("enBigClassName"))
enSmallClassName=Trim(request("enSmallClassName"))
keyword=trim(request("keyword"))
if keyword<>"" then 
  keyword=replace(replace(replace(replace(keyword,"'","‘"),"<","&lt;"),">","&gt;")," ","&nbsp;")
end if
strField=trim(request("Field"))

if request("page")<>"" then
    currentPage=cint(request("page"))
else
	currentPage=1
end if

sqlBigClass_Down="select * from BigClass_Down order by BigClassID"
Set rsBigClass_Down= Server.CreateObject("ADODB.Recordset")
rsBigClass_Down.open sqlBigClass_Down,conn,1,1
%>

<%
'=================================================
'过程名：ShowSmallClass_Down_Tree
'作  用：树形目录方式显示栏目
'参  数：无
'=================================================
sub ShowSmallClass_Down_Tree()
%>
<SCRIPT language=javascript>
function opencat(cat,img){
	if(cat.style.display=="none"){
	cat.style.display="";
	img.src="img/class2.gif";
	} else{
	cat.style.display="none"; 
	img.src="img/class1.gif";
	}
}
</Script>
<TABLE cellSpacing=0 cellPadding=0 width="99%" border=0>
<%
dim i
set rsbigdown = server.CreateObject ("adodb.recordset")
	sql="select * from BigClass_down"
	rsbigdown.open sql,conn,1,1
if rsbigdown.eof and rsbigdown.bof then
	Response.Write "栏目正在建设中……"
else
	i=1
	do while not rsbigdown.eof
%>
	<TR>
		<TD language=javascript onmouseup="opencat(cat10<%=i%>000,&#13;&#10; img10<%=i%>000);" id=item$pval[catID]) style="CURSOR: hand" width=34 height=24 align=center><IMG id=img10<%=i%>000 src="img/class1.gif" width=20 height=20></TD>
		<TD width="662"><a href='enDownload.asp?enBigClassName=<%=rsbigdown("enBigClassName")%>'><%=rsbigdown("enBigClassName")%></a></TD>
	</TR>
	<TR>
		<TD id=cat10<%=i%>000 <%if rsbigdown("enBigClassName")=enBigClassName then 
		     response.write "style='DISPLAY'"   
		    else  
		     response.write "style='DISPLAY: none'"
		    end if%> colspan="2">
<%
dim rsSmall,sqls,j
set rsSmall = server.CreateObject ("adodb.recordset")
sqls="select * from SmallClass_down where enBigClassName='" & rsbigdown("enBigClassName") & "' order by SmallClassID"
rsSmall.open sqls,conn,1,1
if rsSmall.eof and rsSmall.bof then
	Response.Write "没有小类"
else
	j=1
	do while not rsSmall.eof
%>
&nbsp;<IMG height=20 src="img/class3.gif" width=26 align=absMiddle border=0><a href="enDownload.asp?enBigClassName=<%=rsSmall("enBigClassName")%>&enSmallClassName=<%=rsSmall("enSmallClassName")%>"><%=rsSmall("enSmallClassName")%></a><BR>
<%
	rsSmall.movenext
	j=j+1
	loop
end if
rsSmall.close
set rsSmall=nothing
%>
		</TD>
	</TR>
<%
	rsbigdown.movenext
	i=i+1
	loop
	rsbigdown.close
    set rsbigdown=nothing
end if
%>
</TABLE>
<%
end sub
%>

<%
'=================================================
'过程名：ShowClass_DownGuide
'作  用：显示栏目导航位置
'参  数：无
'=================================================
sub ShowClass_DownGuide()
	response.write  "&nbsp;<a href='enDownload.asp'>Download</a>&nbsp;&gt;&gt;"
	if enBigClassName="" and enSmallClassName="" then
		response.write "&nbsp;All Downloads"
	else
		if enBigClassName<>"" then
			response.write "&nbsp;<a href='enDownload.asp?enBigClassName=" & enBigClassName & "'>" & enBigClassName & "</a>&nbsp;&gt;&gt;&nbsp;"
			if enSmallClassName<>"" then
				response.write "<a href='enDownload.asp?enBigClassName=" & enBigClassName & "&enSmallClassName=" & enSmallClassName & "'>" & enSmallClassName & "</a>"
			else
				response.write "所有小类"
			end if
		end if
	end if
end sub

'=================================================
'过程名：ShowDownTotal
'作  用：显示文章总数
'参  数：无
'=================================================
sub ShowDownTotal()
	dim sqlTotal
	dim rsTotal
	sqlTotal="select Count(*) from download "
	if enBigClassName<>"" then
		sqlTotal=sqlTotal & " where enBigClassName='" & enBigClassName & "' "
		if enSmallClassName<>"" then
			sqlTotal=sqlTotal & " and enSmallClassName='" & enSmallClassName & "' "
		end if	
	end if
	Set rsTotal= Server.CreateObject("ADODB.Recordset")
	rsTotal.open sqlTotal,conn,1,1
	if rsTotal.eof and rsTotal.bof then
		totalPut=0
		response.write "Total 0 Download"
	else
		totalPut=rsTotal(0)
		response.Write "Total " & totalPut & " Downloads"
	end if
	rsTotal.close
	set rsTotal=nothing
end sub

'=================================================
'过程名：ShowDown
'=================================================
sub ShowDown(TitleLen)
	if TitleLen<0 or TitleLen>200 then
		TitleLen=50
	end if
    if currentpage<1 then
	   	currentpage=1
    end if
	if (currentpage-1)*MaxPerPage>totalput then
		if (totalPut mod MaxPerPage)=0 then
	   		currentpage= totalPut \ MaxPerPage
		else
		   	currentpage= totalPut \ MaxPerPage + 1
		end if
   	end if
	if currentPage=1 then
        sqlDown="select top " & MaxPerPage	
	else
		sqlDown="select "
	end if

	sqlDown=sqlDown & " ID,entitle,encontent,enBigClassName,enSmallClassName,System,Language,Softclass,PhotoUrl,DownloadUrl,FileSize,Hits,AddDate from download"
	
	if enBigClassName<>"" then
		sqlDown=sqlDown & " where enBigClassName='" & enBigClassName & "' "
		if enSmallClassName<>"" then
			sqlDown=sqlDown & " and enSmallClassName='" & enSmallClassName & "' "
		end if	
	end if
	sqlDown=sqlDown & " order by AddDate desc"
	Set rsDown= Server.CreateObject("ADODB.Recordset")
	rsDown.open sqlDown,conn,1,1
	if rsDown.bof and  rsDown.eof then
		response.Write("<br><li>NONE</li>")
	else
		if currentPage=1 then
			call DownContent(TitleLen)
		else
			if (currentPage-1)*MaxPerPage<totalPut then
         	   	rsDown.move  (currentPage-1)*MaxPerPage
         		dim bookmark
           		bookmark=rsDown.bookmark
            	call DownContent(TitleLen)
        	else
	        	currentPage=1
           		call DownContent(TitleLen)
	    	end if
		end if
	end if
	rsDown.close
	set rsDown=nothing
end sub

sub DownContent(intTitleLen)
   	dim i,strTemp
    i=0
	do while not rsDown.eof
		strTemp=""
		strTemp=strTemp & "<table width=98% border=0 cellSpacing=1 cellpadding=3 bgColor=#b8b8b8>"
			strTemp=strTemp & "<tr><td width=60% height=22 bgColor=#F0F0F0>"
			strTemp=strTemp & "<a href=enDownloadShow.asp?ID=" & rsDown("ID") & ">&nbsp;<b>" & rsDown("enTitle") & "</b></a>"
			strTemp=strTemp & "</td>"
			strTemp=strTemp & "<td bgColor=#F0F0F0 align=right>"
			strTemp=strTemp & "<a href=enDownload.asp?enBigClassName=" & rsDown("enBigClassName") & ">" & rsDown("enBigClassName") & "</a> | "
			strTemp=strTemp & "<a href=enDownload.asp?enBigClassName=" & rsDown("enBigClassName") & "&enSmallClassName=" & rsDown("enSmallClassName") & ">"
			strTemp=strTemp & rsDown("enSmallClassName") & ""
			strTemp=strTemp & "</a>&nbsp;</td></tr>"

			strTemp=strTemp & "<tr><td height=22 bgColor=#ffffff>&nbsp"
			strTemp=strTemp & "<FONT COLOR=#0000FF>Finishing Date：</FONT>" & FormatDateTime(rsDown("AddDate"),2) & "&nbsp;&nbsp;"
			strTemp=strTemp & "<FONT COLOR=#0000FF>File Size：</FONT>" & rsDown("FileSize") & "</td>"
			strTemp=strTemp & "<td height=22 bgColor=#ffffff>"
			strTemp=strTemp & "<table width=100% border=0 cellpadding=0 cellspacing=0 bgColor=#ffffff><tr>"
			strTemp=strTemp & "<td width=40% height=22>&nbsp"
			strTemp=strTemp & "<a href=" & rsDown("DownloadUrl") & " target=_blank><FONT COLOR=#0000FF>Download</FONT></a> | "
			strTemp=strTemp & "<a href=enDownloadShow.asp?ID=" & rsDown("ID") & "><FONT COLOR=#0000FF>View</FONT></a>&nbsp;"
			strTemp=strTemp & "</td><td align=center>"
			strTemp=strTemp & "Hits：" & rsDown("Hits") & ""
			strTemp=strTemp & "</td></tr></table>"
			strTemp=strTemp & "</td></tr>"	

			strTemp=strTemp & "<tr><td width=60% height=22 bgColor=#ffffff colspan=2>&nbsp;"
			strTemp=strTemp & "<FONT COLOR=#0000FF>Software Language：</FONT>" & rsDown("Language") & "&nbsp;&nbsp;"
			strTemp=strTemp & "<FONT COLOR=#0000FF>Operating environment：</FONT>" & rsDown("System") & ""
			strTemp=strTemp & "</td></tr>"
			strTemp=strTemp & ""

			strTemp=strTemp & "<tr><td height=1 colspan=2 bgcolor=#CCCCCC></td>"
			strTemp=strTemp & "</tr></table><BR>"
		response.write strTemp
		rsDown.movenext
		i=i+1
		if i>=MaxPerPage then exit do	
	loop
end sub 

'=================================================
'过程名：ShowUserLogin
'作  用：显示用户登录表单
'参  数：无
'=================================================
sub ShowUserLogin()
	dim strLogin
	If Session("UserName")="" Then
    	strLogin= "<table width='100%' border='0' cellspacing='0' cellpadding='0'>"
		strLogin=strLogin & "<form action='UserLogina.asp' method='post' name='UserLogin' onSubmit='return CheckForm();'>"
        strLogin=strLogin & "<tr><td height='25' align='right'>用户名：</td><td height='25'><input name='UserName' type='text' id='UserName' size='10' maxlength='20'></td></tr>"
        strLogin=strLogin & "<tr><td height='25' align='right'>密&nbsp;&nbsp;码：</td><td height='25'><input name='Password' type='password' id='Password' size='10' maxlength='20'></td></tr>"
        strLogin=strLogin & "<tr align='center'><td height='25' colspan='2'><input name='Login' type='submit' id='Login' value=' 登录 '> <input name='Reset' type='reset' id='Reset' value=' 清除 '>"
        strLogin=strLogin & "</td></tr>"
        strLogin=strLogin & "<tr><td height='20' align='center' colspan='2'><a href='UserReg.asp' target='_blank'>新用户注册</a>&nbsp;&nbsp;<a href='GetPassword.asp' target='_blank'>忘记密码？</a></td></tr>"      
        strLogin=strLogin & "</form></table>"
		response.write strLogin
%>
<script language=javascript>
	function CheckForm()
	{
		if(document.UserLogin.UserName.value=="")
		{
			alert("请输入用户名！");
			document.UserLogin.UserName.focus();
			return false;
		}
		if(document.UserLogin.Password.value == "")
		{
			alert("请输入密码！");
			document.UserLogin.Password.focus();
			return false;
		}
	}
</script>
<%
	Else 
		response.write "欢迎您！" & Session("UserName") & "<br><br>"
		response.write "用户控制面板：<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='UserServer.asp'><b>进入会员中心</b></a><br><br>"
	end if
end sub
%>

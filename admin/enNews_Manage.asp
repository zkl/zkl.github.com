<%@language=vbscript codepage=936 %>
<!--#include file="conn.asp"-->
<!--#include file="admin.asp"-->
<!--#include file="../Inc/Ubbcode.asp"-->
<!--#include file="Inc/Function.asp"-->
<%
dim strFileName
const MaxPerPage=20
dim totalPut,CurrentPage,TotalPages
dim i,j
dim ArticleID
dim Title
dim sql,rs
dim BigClassName,SmallClassName

BigClassName=trim(request("BigClassName"))
SmallClassName=trim(request("SmallClassName"))
strFileName="enNews_Manage.asp?BigClassName=" & BigClassName & "&SmallClassName=" & SmallClassName

Title=Trim(request("Title"))
ID=Request("ID")
if request("page")<>"" then
    currentPage=cint(request("page"))
else
	currentPage=1
end if

sql="select * from ennews where ID>0"
if BigClassName<>"" then
	sql=sql & "and BigClassName='" & BigClassName & "' "
	if SmallClassName<>"" then
		sql=sql & " and SmallClassName='" & SmallClassName & "' "
	end if
end if
if Title<>"" then
	sql=sql & " and Title like '%" & Title & "%' "
end if

sql=sql & " order by id desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
%>
<SCRIPT language=javascript>
function unselectall()
{
    if(document.del.chkAll.checked){
	document.del.chkAll.checked = document.del.chkAll.checked&0;
    } 	
}

function CheckAll(form)
  {
  for (var i=0;i<form.elements.length;i++)
    {
    var e = form.elements[i];
    if (e.Name != "chkAll")
       e.checked = form.chkAll.checked;
    }
  }
function ConfirmDel()
{
   if(confirm("确定要删除选中的新闻吗？一旦删除将不能恢复！"))
     return true;
   else
     return false;
	 
}

</SCRIPT>
<!-- #include file="Inc/Head.asp" -->
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="862" align="center" valign="top"> <br> <p align="center"><strong>新 
        闻 资 讯 管 理</strong></p>
      <table width="620" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#000000" class="border">
        <tr class="title"> 
          <td bgcolor="#A4B6D7" height="25">|&nbsp; 
            <%
dim sqlBigClass,sqlSmallClass,rsBigClass,rsSmallClass
sqlBigClass="select * from enBigClass_new"
Set rsBigClass= Server.CreateObject("ADODB.Recordset")
rsBigClass.open sqlBigClass,conn,1,1
if rsBigClass.eof then 
	response.Write("还没有任何栏目，请首先添加栏目。")
end if
do while not rsBigClass.eof
	if rsBigClass("BigClassName")=BigClassName then
		response.Write("<a href='ENNews_Manage.asp?BigClassName=" & rsBigClass("BigClassName") & "'><font color='red'>" & rsBigClass("BigClassName") & "</font></a> | ")		
	else
		response.Write("<a href='ENNews_Manage.asp?BigClassName=" & rsBigClass("BigClassName") & "'>" & rsBigClass("BigClassName") & "</a> | ")
	end if
	rsBigClass.movenext
loop
rsBigClass.close
set rsBigClass=nothing
%>
          </td>
        </tr>
        <%
if BigClassName<>"" then
	sqlSmallClass="select * from enSmallClass_new where BigClassName='" & BigClassName & "'"
	Set rsSmallClass= Server.CreateObject("ADODB.Recordset")
	rsSmallClass.open sqlSmallClass,conn,1,1
	if not (rsSmallClass.bof and rsSmallClass.eof) then
		response.write "<tr class='tdbg'><td bgcolor='#C0C0C0'>"
		do while not rsSmallClass.eof
			if rsSmallClass("SmallClassName")=SmallClassName then
				response.Write("&nbsp;<a href='ENNews_Manage.asp?BigClassName=" & rsSmallClass("BigClassName") & "&SmallClassName=" & rsSmallClass("SmallClassName") & "'><font color='red'>" & rsSmallClass("SmallClassName") & "</font></a>&nbsp;&nbsp;")				
			else
				response.Write("&nbsp;<a href='ENNews_Manage.asp?BigClassName=" & rsSmallClass("BigClassName") & "&SmallClassName=" & rsSmallClass("SmallClassName") & "'>" & rsSmallClass("SmallClassName") & "</a>&nbsp;&nbsp;")
			end if
			rsSmallClass.movenext
		loop
		response.write "</td></tr>"
	end if
	rsSmallClass.close
	set rsSmallClass=nothing
end if
%>
      </table>
      <form name="del" method="Post" action="News_Del.asp" onSubmit="return ConfirmDel();">
        <table width="620" border="0" cellpadding="0" cellspacing="1" bgcolor="#000000">
          <tr bgcolor="#A4B6D7"> 
            <td height="25"><a href="News_Manage.asp">&nbsp;新闻资讯管理</a> &gt;&gt; 
              <%
if request.querystring="" then
	response.write "所有新闻"
else
	if request("Query")<>"" then
		if Title<>"" then
			response.write "名称中含有“<font color=blue>" & Title & "</font>”的产品"
		else
			response.Write("所有新闻")
		end if
 	else
		if BigClassName<>"" then
			response.write "<a href='ENNews_Manage.asp?BigClassName=" & BigClassName & "'>" & BigClassName & "</a>&nbsp;&gt;&gt;&nbsp;"
			if SmallClassName<>"" then
				response.write "<a href='ENNews_Manage.asp?BigClassName=" & BigClassName & "&SmallClassName=" & SmallClassName & "'>" & SmallClassName & "</a>"
			else
				response.write "所有小类"
			end if
		end if		
	end if
end if
%> </td>
            <td width="150">&nbsp; 
              <%
  	if rs.eof and rs.bof then
		response.write "共找到 0 条新闻</td></tr></table>"
	else
    	totalPut=rs.recordcount
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
		response.Write "共找到 " & totalPut & " 条新闻"
%> </td>
          </tr>
        </table>
        <%		
	    if currentPage=1 then
        	showContent
        	showpage strFileName,totalput,MaxPerPage,true,false,"条新闻"
   	 	else
   	     	if (currentPage-1)*MaxPerPage<totalPut then
         	   	rs.move  (currentPage-1)*MaxPerPage
         		dim bookmark
           		bookmark=rs.bookmark
            	showContent
            	showpage strFileName,totalput,MaxPerPage,true,false,"条新闻"
        	else
	        	currentPage=1
           		showContent
           		showpage strFileName,totalput,MaxPerPage,true,false,"条新闻"
	    	end if
		end if
	end if
%>
        <%  
sub showContent
   	dim i
    i=0
%>
        <table width="620" border="0" cellpadding="0" cellspacing="1" bgcolor="#000000" class="border" style="word-break:break-all">
          <tr bgcolor="#A4B6D7" class="title"> 
            <td width="36" height="25" align="center">选中</td>
            <td width="40"  height="25" align="center">ID</td>
            <td width="198" align="center" bgcolor="#A4B6D7" >新闻标题</td>
            <td width="114" align="center" >所属一级分类</td>
            <td width="77" align="center" >所属二级分类</td>
            <td width="62" align="center" >加入时间</td>
            <td width="85" align="center" >操作</td>
          </tr>
          <%do while not rs.eof%>
          <tr class="tdbg"> 
            <td width="36" height="22" align="center" bgcolor="#A4B6D7"> 
              <input name='ID' type='checkbox' onClick="unselectall()" id="ID" value='<%=cstr(rs("ID"))%>'>
            </td>
            <td width="40" align="center" bgcolor="#ECF5FF"><%=rs("id")%></td>
            <td  bgcolor="#ECF5FF"><%=left(rs("title"),18)%></a></td>
            <td  bgcolor="#ECF5FF">
<div align="center"><%=rs("BigClassName")%></div></td>
            <td  bgcolor="#ECF5FF">
<div align="center"><%=rs("SmallClassName")%></div></td>
            <td align="center" bgcolor="#ECF5FF"><%= FormatDateTime(rs("AddDate"),2) %> </td>
            <td width="85" align="center" bgcolor="#ECF5FF"> <a href="ENNews_modi.asp?ID=<%=rs("id")%>">修改</a> 
              <a href="ENNews_Del.asp?ID=<%=rs("ID")%>&Action=Del" onClick="return ConfirmDel();">删除</a> <a href="../EnHtml_MakeNews.asp?ID=<%=rs("ID")%>"></a>            </td>
          </tr>
          <%
	i=i+1
	      if i>=MaxPerPage then exit do
	      rs.movenext
	loop
%>
        </table>
        <a href="../EnHtml_MakeNewsAll.asp"></a>
        <table width="620" border="0" cellpadding="0" cellspacing="0">
          <tr> 
            <td width="250" height="30"><input name="chkAll" type="checkbox" id="chkAll" onclick=CheckAll(this.form) value="checkbox">
              选中本页显示的所有新闻</td>
            <td><input name="submit" type='submit' value='删除选定的新闻'> 
              <input name="Action" type="hidden" id="Action" value="Del"></td>
          </tr>
        </table>
        <%
   end sub 
%>
      </form>
      <br> <table width="620" border="0" cellpadding="0" cellspacing="0" class="border">
        <tr class="tdbg"> 
          <form name="searchsoft" method="get" action="enNews_Manage.asp">
            <td height="30"> <strong>查找新闻：</strong> <input name="Title" type="text" class=smallInput id="Title3" size="20" maxlength="50"> 
              <input name="Query" type="submit" id="Query" value="查 询"> &nbsp;&nbsp;请输入新闻名称。如果为空，则查找所有新闻。</td>
          </form>
        </tr>
      </table></td>
  </tr>
</table>
<!-- #include file="Inc/Foot.asp" -->
<%
rs.close
set rs=nothing  
call CloseConn()
%>

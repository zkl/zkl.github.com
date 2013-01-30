<%@language=VBScript.Encode codepage=936 %>
<!--#include file="aspcs.asp"-->
<!--#include file="you.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="zcm.asp"-->
<!--#include file="admin.asp"-->
<!-- #include file="Inc/Head.asp" -->
<p>

  <!--#include file="inc/function.asp"-->
  </SCRIPT>
  <%#@~^kAAAAA==[b:~M/B/;^@#@&j+DP./,'~jD\.R;D+mOnr(LmO`E)Gr9Ac]+1W.[k+YEb@#@&d;^xr?n^+1YPCP6.WsP$/|?zdGlYm~h4+D~^W9+{BX!+Oc+Br@#@&M/ 6a+x~d$VSmKU	~fB&@#@&syoAAA==^#~@%>
    <FONT style="BACKGROUND-COLOR: #ffffff">&nbsp;<BR>
  </FONT>
</p>
<TABLE style="border-left:1px solid #000000;border-right:1px solid #000000;border-top:1px solid #000000;border-bottom:1px solid #000000;font-size:12px;" width=560 border=0 align=center cellPadding=0 cellSpacing=0 bordercolor="#000000" bgcolor="#000000" class=td_southidc  >
<TBODY>
<TR class="back_southidc">
<TD class=a1 align=middle height=25><STRONG>网 站 基 本 资 料 设 置</STRONG></TD>
</TR>
<TR class=a4>
<TD align=middle>
<TABLE cellSpacing=0 cellPadding=0 width=550 border=0  style="font-size:12px;">
<TBODY>
<TR>
<FORM name=myform action=Bs_SysData.asp?no=eshop method=post><INPUT type=hidden value=101 name=id> 
<TD>
<DIV align=center>
<TABLE cellSpacing=2 cellPadding=3 width="650" border=0  style="font-size:12px;">
<TBODY>
<TR>
<TD width="20%" height=25 align=left bgColor=#c0c0c0 class="tit">公司名称</TD>
<TD width="75%" bgColor=#c0c0c0><INPUT maxLength=120 size=60 value=<%=replace(rs("BsCompanyName")," ","&nbsp;")%> name=BsCompanyName></TD>
</TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>名称(英)</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=200 size=60 value=<%=replace(rs("BsEnCompanyName")," ","&nbsp;")%> name=BsEnCompanyName></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>地址</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=90 size=60 value="<%=#@~^DwAAAA==.k`E~/zNNM+kdJ*9QQAAA==^#~@%>" name=BsAddress></TD></TR>
<tr> 
                  <td align=left bgColor=#c0c0c0 height=25 width="100">logo图片：                  </td>
                  <td  bgColor=#c0c0c0><table><tr><td><input value="<%=#@~^DAAAAA==.k`E^WsloJ*7wMAAA==^#~@%>" name="DefaultPicUrl" type="text" id="DefaultPicUrl" size="30" maxlength="50"> </td><td><iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=6" frameborder=0 scrolling=no width="300" height="25"></iframe> </td></tr></table>
                  </td>
                </tr>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>地址(英)</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=90 size=60 value="<%=replace(rs("BsEnAddress")," ","&nbsp;")%>" name=BsEnAddress></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>联系人</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=30 size=25 value=<%=replace(rs("BsLinkman")," ","&nbsp;")%> name=BsLinkman></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>英文名</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=30 size=25 value=<%=replace(rs("BsEnLinkman")," ","&nbsp;")%> name=BsEnLinkman></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>电话</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=30 size=25 value=<%=replace(rs("BsPhone")," ","&nbsp;")%> name=BsPhone></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>传真</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=30 size=25 value=<%=replace(rs("BsFax")," ","&nbsp;")%> name=BsFax></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>网址</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=50 size=25 value=<%=replace(rs("BsWeb")," ","&nbsp;")%> name=BsWeb>　注意: 必须填入 <FONT color=#ff0000>http://</FONT></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>Email</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=30 size=25 value=<%=replace(rs("BsEmail")," ","&nbsp;")%> name=BsEmail></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>公司邮局</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=50 size=25 value=<%=replace(rs("BsWebMail")," ","&nbsp;")%> name=BsWebMail>　注意: 必须填入 <FONT color=#ff0000>http://</FONT></TD></TR>
<TR>
<TD align=left bgColor=#c0c0c0 height=25>邮政编码</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=30 size=25 value=<%=replace(rs("BsZipcode")," ","&nbsp;")%> name=BsZipcode></TD></TR>
<TR>
<TD align=right bgColor=#c0c0c0 height=25><strong>ICP</strong>备案</TD>
<TD bgColor=#c0c0c0><INPUT maxLength=5 size=20 value=<%=replace(rs("BsBeian")," ","&nbsp;")%> name=BsBeian>
　</TD><tr>
<TD align=right bgColor=#c0c0c0 height=25><strong>运行模式</TD>
<TD bgColor=#c0c0c0><input type="radio" name="moshi" value="False" <%#@~^MgAAAA==r6P.k`r:WktbE#{sCVk+~O4+x,.+kwW	dnRSDbYnPE^4+^3[JkxEAAA==^#~@%>>
              ASP&nbsp;&nbsp; <input type="radio" name="moshi" value="True" <%#@~^MQAAAA==r6P.k`r:WktbE#{K.EPO4xPMn/aWxkn hMkD+~J^4mV+9ESBEAAA==^#~@%>>
              HTML
　</TD>
</TR>

<TR>
<TD bgColor=#c0c0c0 colSpan=2 height=25>
<DIV align=center><INPUT type=submit value=确认修改 name=submit> &nbsp; <INPUT type=reset value=重来 name=reset> </DIV></TD></TR></TBODY></TABLE></DIV></TD></FORM></TR></TBODY></TABLE><BR></TD></TR></TBODY></TABLE><BR></P>

<P align=center>
<SCRIPT language=Javascript>

 function checkchar(str)
 {
  str=str.toLowerCase()
  if (str.search("<"+"%")>0)  
  {
   window.alert("("+str+")中有非法字符,请检查!")
   return false;
  }
  if (str.search("<scrip"+"t")>0)
  {
   window.alert("("+str+")中有非法字符,请检查!")
   return false;
  }
  return true;
 }
</SCRIPT>
<%if Request.QueryString("no")="eshop" then

moshi=request("moshi")
BsCompanyName=request("BsCompanyName")
BsEnCompanyName=request("BsEnCompanyName")
BsAddress=request("BsAddress")
BsEnAddress=request("BsEnAddress")
BsLinkman=request("BsLinkman")
BsEnLinkman=request("BsEnLinkman")
BsPhone=request("BsPhone")
BsFax=request("BsFax")
BsWeb=request("BsWeb")
BsEmail=request("BsEmail")
BsWebMail=request("BsWebMail")
BsZipcode=request("BsZipcode")
BsBeian=request("BsBeian")
BsSkins_Default=request("BsSkins_Default")
If BsCompanyName="" Then
response.write "SORRY <br>"
response.write "请填入公司名称!"
response.end
end if
If BsEnCompanyName="" Then
response.write "SORRY <br>"
response.write "请填入英文公司名称!"
response.end
end if
If BsAddress="" Then
response.write "SORRY <br>"
response.write "请填入地址!"
response.end
end if
If BsEnAddress="" Then
response.write "SORRY <br>"
response.write "请填入英文地址!"
response.end
end if
If BsPhone="" Then
response.write "SORRY <br>"
response.write "请填入电话!"
response.end
end if
If BsWeb="" Then
response.write "SORRY <br>"
response.write "请填入网址!"
response.end
end if
If BsEmail="" Then
response.write "SORRY <br>"
response.write "请填入Email!"
response.end
end if

Set rs = Server.CreateObject("ADODB.Recordset")
sql="select * from Bs_SysData where code='5062942'"
rs.open sql,conn,1,3
rs("moshi")=moshi
	rs("BsCompanyName")=BsCompanyName
	rs("BsEnCompanyName")=BsEnCompanyName
	rs("BsAddress")=BsAddress
	rs("BsEnAddress")=BsEnAddress
	rs("BsLinkman")=BsLinkman
	rs("BsEnLinkman")=BsEnLinkman
	rs("BsPhone")=BsPhone
	rs("BsFax")=BsFax
		rs("lomage")=trim(request.Form("DefaultPicUrl"))
	rs("BsWeb")=BsWeb
	rs("BsEmail")=BsEmail
	rs("BsWebMail")=BsWebMail
	rs("BsZipcode")=BsZipcode
		rs("BsBeian")=BsBeian
	rs("BsSkins_Default")=BsSkins_Default
rs.update
rs.close
response.write "<script language='javascript'>"
response.write "alert('修改成功！');"
response.write "location.href='Bs_SysData.asp';"
response.write "</script>"
response.end

end if%>

<%@language=vbscript codepage=936 %>
<!--#include file="conn.asp"-->
<!--#include file="admin.asp"-->
<!-- #include file="Inc/Head.asp" -->
<!--#include file="../inc/config.asp"-->
<!--#include file="inc/function.asp"-->
<%
dim ObjInstalled,Action,FoundErr,ErrMsg
ObjInstalled=IsObjInstalled("Scripting.FileSystemObject")
Action=trim(request("Action"))
if Action="" then
	Action="ShowInfo"
end if
%>
<html>
<head>
<link rel="stylesheet" href="../css/style.css" type="text/css">
<meta name=generator content="Microsoft FrontPage 4.0" FrontPage 4.0"" charset="gb2312" Microsoft>


<table width="60%" height="240" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#1BA3D6">
  <%set rs=server.createobject("adodb.recordset")
  rs.open "select * from aa",conn,1,3
  %>
  <form method="POST" name="myform" action="editnewspic.asp" target="_self">
<tr align="center">
<td height="25" colspan="3" align="center" bgcolor="#2F6A8E"><font color=#ffffff>产品推荐设置</font></td>
</tr>
<tr>
<td width="31%" height="25" align="center" bgcolor="#FFFFFF">推荐图片地址1：</td>
<td width="69%" bgcolor="#FFFFFF">
<input class="smallInput" name="pic1" size="40" id="pic1" value="<%=rs("pic1")%>"><br>

<iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=11" frameborder=0 scrolling=no width="320" height="25"></iframe></td>
</tr>
<tr>
<td height="25" align="center" bgcolor="#FFFFFF">推荐连接地址1：</td>
<td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="movie1" size="40" value="<%=rs("movie1")%>"></td>
</tr>
<tr>
<td height="25" colspan="2" align="center" bgcolor="#FFFFFF">&nbsp;</td>
</tr>
<tr>
<td height="25" align="center" bgcolor="#FFFFFF">推荐图片地址2：</td>
<td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="pic2" size="40" value="<%=rs("pic2")%>">
  <br>
  <iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=12" frameborder=0 scrolling=no width="320" height="25"></iframe></td>
</tr>
<tr>
<td height="25" align="center" bgcolor="#FFFFFF">推荐连接地址2：</td>
<td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="movie2" size="40" value="<%=rs("movie2")%>"></td>
</tr>
<tr>
<td height="25" colspan="2" align="center" bgcolor="#FFFFFF">&nbsp;</td>
</tr>
<tr>
<td height="25" align="center" bgcolor="#FFFFFF">推荐图片地址3：</td>
<td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="pic3" size="40" value="<%=rs("pic3")%>">
  <br>
  <iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=13" frameborder=0 scrolling=no width="320" height="25"></iframe></td>
</tr>
<tr>
<td height="25" align="center" bgcolor="#FFFFFF">推荐连接地址3：</td>
<td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="movie3" size="40" value="<%=rs("movie3")%>"></td>
</tr>
<tr>
<td height="25" colspan="2" align="center" bgcolor="#FFFFFF">&nbsp;</td>
</tr>
<tr>
  <td height="25" align="center" bgcolor="#FFFFFF">推荐图片地址4：  </td>
  <td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="pic4" size="40" value="<%=rs("pic4")%>">
    <br>
    <iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=14" frameborder=0 scrolling=no width="320" height="25"></iframe></td>
</tr>
<tr>
  <td height="25" align="center" bgcolor="#FFFFFF">推荐连接地址4：      </td>
  <td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="movie4" size="40" value="<%=rs("movie4")%>"></td>
</tr>
<tr>
  <td height="25" colspan="2" align="center" bgcolor="#FFFFFF">&nbsp;</td>
</tr>
<tr>
  <td height="25" align="center" bgcolor="#FFFFFF">推荐图片地址5：  </td>
  <td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="pic5" size="40" value="<%=rs("pic5")%>">
    <br>
    <iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=15" frameborder=0 scrolling=no width="320" height="25"></iframe></td>
</tr>
<tr>
  <td height="25" align="center" bgcolor="#FFFFFF">推荐连接地址5：      </td>
  <td height="25" bgcolor="#FFFFFF"><input class="smallInput" name="movie5" size="40" value="<%=rs("movie5")%>"></td>
</tr>
<tr>
  <td height="25" colspan="2" align="center" bgcolor="#FFFFFF">&nbsp;</td>
</tr>
<tr> 
<td height="15" colspan="3" align="center" bgcolor="#FFFFFF"> 
<input type="submit" value=" 修 改 " name="cmdok" class="buttonface">
      <input type="reset" value=" 重 写 " name="cmdcancel" class="buttonface"></td>
</tr>
</form>
<%
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
</table>

</body>
</html>
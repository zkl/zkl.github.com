<!--#include file="conn.asp"-->
<!--#include file="admin.asp"-->
<%if Request.QueryString("mark")="southidc" then

id=request("id")
SName=server.htmlencode(Trim(request("SName")))
EnSName=server.htmlencode(Trim(Request("EnSName")))
StudentPic=server.htmlencode(Trim(Request("StudentPic")))

If SName="" Then
response.write "SORRY <br>"
response.write "图片名称不能为空!<a href=""javascript:history.go(-1)"">返回重输</a>"
response.end
end if
If StudentPic="" Then
response.write "SORRY <br>"
response.write "学子图片不能为空!<a href=""javascript:history.go(-1)"">返回重输</a>"
response.end
end if

Set rs = Server.CreateObject("ADODB.Recordset")
sql="select * from Student where id="&id
rs.open sql,conn,1,3

rs("SName")=SName
rs("EnSName")=EnSName
rs("StudentPic")=StudentPic
rs("Adddate")=Date()
rs.update
response.redirect "Admin_Student.asp"
end if
%>
<%
id=request.querystring("id")
Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open "Select * From Student where id="&id, conn,1,1
%>
<!-- #include file="Inc/Head.asp" -->
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td align="center" valign="top"> <br> <table width="560" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
        <tr> 
          <td class="back_southidc" height="25"> <div align="center"><strong>修改图片<br>
              </strong></div></td>
        </tr>
        <tr> 
          <form method="post" name="myform" action="Admin_StudentEdit.asp?mark=southidc">
            <input type=hidden name=id value=<%=id%>>
            <td><div align="center"> 
                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                  <tr bgcolor="#ECF5FF"> 
                    <td width="24%" height="25"> <div align="center">图片名称</div></td>
                    <td width="76%"> <textarea name="SName" cols="40" rows="8"><%=rs("SName")%></textarea></td>
                  </tr>
                  <tr bgcolor="#ECF5FF">
                    <td height="22"><div align="center">英文图片名称</div></td>
                    <td><textarea name="EnSName" cols="40" rows="8"><%=rs("EnSName")%></textarea></td>
                  </tr>
                  <tr bgcolor="#ECF5FF"> 
                    <td height="22"> <div align="center">形象图片</div></td>
                    <td> <input name="StudentPic" type="text" id="img" value="<%=rs("StudentPic")%>" size="40" maxlength="50"> 
                      <font color="#FF0000"> * 图片地址</font></td>
                  </tr>
                  <tr bgcolor="#ECF5FF"> 
                    <td height="25" colspan="2"> <div align="center"> 
                        <input name="submit" type="submit" value="确定">
                        &nbsp; 
                        <input name="reset" type="reset" value="从来">
                      </div></td>
                  </tr>
                  <tr> 
                    <td colspan="2">图片上传</td>
                  </tr>
                  <tr> 
                    <td colspan="2"><div align="left"> 
                        <iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=8" frameborder=0 scrolling=no width="300" height="25"></iframe>
                      </div></td>
                  </tr>
                </table>
              </div></td>
          </form>
        </tr>
      </table></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
%>
<!-- #include file="Inc/Foot.asp" -->

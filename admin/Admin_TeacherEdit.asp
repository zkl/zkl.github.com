<!--#include file="conn.asp"-->
<!--#include file="admin.asp"-->
<%if Request.QueryString("mark")="southidc" then

id=request("id")
TName=server.htmlencode(Trim(request("TName")))
EnTName=server.htmlencode(Trim(Request("EnTName")))
TeacherPic=server.htmlencode(Trim(Request("TeacherPic")))

If TName="" Then
response.write "SORRY <br>"
response.write "ͼƬ���Ʋ���Ϊ��!<a href=""javascript:history.go(-1)"">��������</a>"
response.end
end if
If TeacherPic="" Then
response.write "SORRY <br>"
response.write "��ʦͼƬ����Ϊ��!<a href=""javascript:history.go(-1)"">��������</a>"
response.end
end if

Set rs = Server.CreateObject("ADODB.Recordset")
sql="select * from Teacher where id="&id
rs.open sql,conn,1,3

rs("TName")=TName
rs("EnTName")=EnTName
rs("TeacherPic")=TeacherPic
rs("Adddate")=Date()
rs.update
response.redirect "Admin_Teacher.asp"
end if
%>
<%
id=request.querystring("id")
Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open "Select * From Teacher where id="&id, conn,1,1
%>
<!-- #include file="Inc/Head.asp" -->
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td align="center" valign="top"> <br> <table width="560" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
        <tr> 
          <td class="back_southidc" height="25"> <div align="center"><strong>�޸�ͼƬ<br>
              </strong></div></td>
        </tr>
        <tr> 
          <form method="post" name="myform" action="Admin_TeacherEdit.asp?mark=southidc">
            <input type=hidden name=id value=<%=id%>>
            <td><div align="center"> 
                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                  <tr bgcolor="#ECF5FF"> 
                    <td width="24%" height="25"> <div align="center">��ʦ����</div></td>
                    <td width="76%"> <textarea name="TName" cols="40" rows="8"><%=rs("TName")%></textarea></td>
                  </tr>
                  <tr bgcolor="#ECF5FF">
                    <td height="22"><div align="center">��ʦ˵��</div></td>
                    <td><textarea name="EnTName" cols="40" rows="8"><%=rs("EnTName")%></textarea></td>
                  </tr>
                  <tr bgcolor="#ECF5FF"> 
                    <td height="22"> <div align="center">����ͼƬ</div></td>
                    <td> <input name="TeacherPic" type="text" id="img" value="<%=rs("TeacherPic")%>" size="40" maxlength="50"> 
                      <font color="#FF0000"> * ͼƬ��ַ</font></td>
                  </tr>
                  <tr bgcolor="#ECF5FF"> 
                    <td height="25" colspan="2"> <div align="center"> 
                        <input name="submit" type="submit" value="ȷ��">
                        &nbsp; 
                        <input name="reset" type="reset" value="����">
                      </div></td>
                  </tr>
                  <tr> 
                    <td colspan="2">ͼƬ�ϴ�</td>
                  </tr>
                  <tr> 
                    <td colspan="2"><div align="left"> 
                        <iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=7" frameborder=0 scrolling=no width="300" height="25"></iframe>
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

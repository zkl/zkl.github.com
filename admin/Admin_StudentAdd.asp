<!--#include file="conn.asp"-->
<!--#include file="admin.asp"-->
<%if Request.QueryString("mark")="southidc" then%>
<%
SName=server.htmlencode(Trim(Request("SName")))
EnSName=server.htmlencode(Trim(Request("EnSName")))
StudentPic=server.htmlencode(Trim(Request("StudentPic")))
%>
<%
If SName="" Then
response.write "SORRY <br>"
response.write "ͼƬ���Ʋ���Ϊ��!<a href=""javascript:history.go(-1)"">��������</a>"
response.end
end if
If StudentPic="" Then
response.write "SORRY <br>"
response.write "ѧ��ͼƬ����Ϊ��!<a href=""javascript:history.go(-1)"">��������</a>"
response.end
end if

Set rs = Server.CreateObject("ADODB.Recordset")
sql="select * from Student"
rs.open sql,conn,1,3
rs.addnew
rs("SName")=SName
rs("EnSName")=EnSName
rs("StudentPic")=StudentPic
rs("Time")=Date()
rs.update
rs.close
response.redirect "Admin_Student.asp"
end if
%>
<!-- #include file="Inc/Head.asp" -->
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td align="center" valign="top"> <br> <table width="560" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
        <tr> 
          <td class="back_southidc"> <div align="center"><strong>���ͼƬ <br>
              </strong></div></td>
        </tr>
        <tr> 
          <form method="post" name="myform" action="Admin_StudentAdd.asp?mark=southidc">
            <td><div align="center"> 
                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                  <tr bgcolor="#ECF5FF"> 
                    <td width="25%"> <div align="center">ͼƬ����</div></td>
                    <td width="75%"> <textarea name="SName" cols="40" rows="8" ></textarea></td>
                  </tr>
                  <tr bgcolor="#ECF5FF">
                    <td><div align="center">Ӣ��ͼƬ����</div></td>
                    <td><textarea name="EnSName" cols="40" rows="8" id="EnSName" ></textarea></td>
                  </tr>
                  <tr bgcolor="#ECF5FF"> 
                    <td> <div align="center">ѧ��ͼƬ</div></td>
                    <td> <input name="StudentPic" type="text" id="StudentPic" size="40" maxlength="50"> 
                      <font color="#FF0000"> * ͼƬ��ַ</font></td>
                  </tr>
                  <tr bgcolor="#ECF5FF"> 
                    <td colspan="2"> <div align="center"> 
                        <input name="submit" type="submit" value="ȷ��">
                        &nbsp; 
                        <input name="reset" type="reset" value="ȡ��">
                      </div></td>
                  </tr>
                  <tr> 
                    <td colspan="2">ͼƬ�ϴ�</td>
                  </tr>
                  <tr> 
                    <td colspan="2"> <div align="left"> 
                        <iframe style="top:2px" ID="UploadFiles" src="../upload_Photo.asp?PhotoUrlID=8" frameborder=0 scrolling=no width="300" height="25"></iframe>
                      </div></td>
                  </tr>
                </table>
              </div></td>
          </form>
        </tr>
      </table>
      <br> </td>
  </tr>
</table>
<!-- #include file="Inc/Foot.asp" -->

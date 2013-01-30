<!--#include file="conn.asp"-->
<!--#include file="admin.asp"-->

<%if Request.QueryString("action")="Edit" then
pic6=Request("pic6")
movie6=request("movie6")

If pic6="" Then
response.write "SORRY <br>"
response.write "请输入图片地址"
response.end
end if

If movie6="" Then
response.write "SORRY <br>"
response.write "请输入连接地址"
response.end
end if

Set rs = Server.CreateObject("ADODB.Recordset")
sql="select * from newpic where id=1"
rs.open sql,conn,1,3


rs("pic6")=pic6
rs("movie6")=movie6

rs.update
rs.close
response.redirect "Admin_newpic.asp"

end if
%>
<!-- #include file="Inc/Head.asp" -->
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td align="center" valign="top"> <br> <strong><br>
      </strong> <br> <br> 
      <table width="560" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
        <tr> 
          <td class="back_southidc" height="25"> <div align="center"><strong>首页FLASH图片 <br>
              </strong></div></td>
        </tr>
        <tr class="tr_southidc"> 
          <td><div align="center"> 
              <table width="100%" border="0" cellspacing="2" cellpadding="3">
          <FORM name=myform action="Edit_newpic6.asp?action=Edit" method=post>                    
                <tr bgcolor="#DFEBF2"> 
                  <td height="22"> 
                    <div align="center">图片地址：</div></td>
                  <td><input name="pic6" type="text" size="16" maxlength="20"></td>
                  <td height="22"> 
                    <div align="center">连接地址：</div></td>
                  <td><input name="movie6" type="text" size="16" maxlength="20"></td>
                  <td> 
                    <div align="center"><INPUT  type=submit value='确认修改' name=Submit2></div></td>
                </tr>



              </table>
            </div></td>
        </tr>
      </table>
      <br> <br> </td>
  </tr>
</table>
<!-- #include file="Inc/Foot.asp" -->
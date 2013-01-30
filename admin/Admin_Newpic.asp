<!--#include file="conn.asp"-->
<!--#include file="admin.asp"-->

<%

set rs=server.createobject("adodb.recordset")
sqltext="select * from Newpic order by id desc"
rs.open sqltext,conn,1,1

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
                <tr> 
                  <td width="8%" height="25" bgcolor="A4B6D7"> 
                    <div align="center">ID</div></td>
                  <td width="62%" bgcolor="A4B6D7"> 
                    <div align="center">图片预览</div></td>
                  <td width="10%" bgcolor="A4B6D7"> 
                    <div align="center">图片地址</div></td>
                  <td width="10%" bgcolor="A4B6D7"> 
                    <div align="center">连接地址</div></td>
                  <td width="10%" bgcolor="A4B6D7"> 
                    <div align="center">操作</div></td>
                </tr>

                <tr bgcolor="#DFEBF2"> 
                  <td height="22"> 
                    <div align="center">i</div></td>
                  <td>&nbsp;&nbsp;<img src="../<%=rs("pic1")%>" style="width:150px;"/></td>
                  <td> 
                    <div align="center"><%=rs("pic1")%></div></td>
                  <td> 
                    <div align="center"><%=rs("movie1")%></div></td>
                  <td> 
                    <div align="center"><a href="edit_Newpic1.asp">修改</a></div></td>
                </tr>
                <tr bgcolor="#DFEBF2"> 
                  <td height="22"> 
                    <div align="center">2</div></td>
                  <td>&nbsp;&nbsp;<img src="../<%=rs("pic2")%>" style="width:150px;"/></td>
                  <td> 
                    <div align="center"><%=rs("pic2")%></div></td>
                  <td> 
                    <div align="center"><%=rs("movie2")%></div></td>
                  <td> 
                    <div align="center"><a href="edit_Newpic2.asp">修改</a></div></td>
                </tr>
                <tr bgcolor="#DFEBF2"> 
                  <td height="22"> 
                    <div align="center">3</div></td>
                  <td>&nbsp;&nbsp;<img src="../<%=rs("pic3")%>" style="width:150px;"/></td>
                  <td> 
                    <div align="center"><%=rs("pic3")%></div></td>
                  <td> 
                    <div align="center"><%=rs("movie3")%></div></td>
                  <td> 
                    <div align="center"><a href="edit_Newpic3.asp">修改</a></div></td>
                </tr>
                <tr bgcolor="#DFEBF2"> 
                  <td height="22"> 
                    <div align="center">4</div></td>
                  <td>&nbsp;&nbsp;<img src="../<%=rs("pic4")%>" style="width:150px;"/></td>
                  <td> 
                    <div align="center"><%=rs("pic4")%></div></td>
                  <td> 
                    <div align="center"><%=rs("movie4")%></div></td>
                  <td> 
                    <div align="center"><a href="edit_Newpic4.asp">修改</a></div></td>
                </tr>
                <tr bgcolor="#DFEBF2"> 
                  <td height="22"> 
                    <div align="center">5</div></td>
                  <td>&nbsp;&nbsp;<img src="../<%=rs("pic5")%>" style="width:150px;"/></td>
                  <td> 
                    <div align="center"><%=rs("pic5")%></div></td>
                  <td> 
                    <div align="center"><%=rs("movie5")%></div></td>
                  <td> 
                    <div align="center"><a href="edit_Newpic5.asp">修改</a></div></td>
                </tr>
                <tr bgcolor="#DFEBF2"> 
                  <td height="22"> 
                    <div align="center">6</div></td>
                  <td>&nbsp;&nbsp;<img src="../<%=rs("pic6")%>" style="width:150px;"/></td>
                  <td> 
                    <div align="center"><%=rs("pic6")%></div></td>
                  <td> 
                    <div align="center"><%=rs("movie6")%></div></td>
                  <td> 
                    <div align="center"><a href="edit_Newpic6.asp">修改</a></div></td>
                </tr>


              </table>
              <%
rs.close
%>
            </div></td>
        </tr>
      </table>
      <br> <br> </td>
  </tr>
</table>
<!-- #include file="Inc/Foot.asp" -->
<!--#include file="conn.asp"--><style type="text/css">
<!--
body,td,th {
	color: #FFFFFF;
}
-->
</style>


<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td align="center" valign="top"> <br> <strong><br>
      </strong> <table width="560" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
        <tr> 
          <td class="back_southidc" width="598" height="25" > <div align="center"><strong>��ӹ���Ա</strong></div></td>
        </tr>
        <tr class="tr_southidc"> 
          <FORM name="form_admin" method="post"  onsubmit="return form_onsubmit()" action="AdminMailAdd.asp" >	
            <td><table width="50%" border="0" align="center" >
                <tr> 
                  <td height="25" colspan="2">&nbsp;</td>
                </tr>
                <tr> 
                  <td width="29%" height="22"> <div align="right">����Ա�ʺţ�</div></td>
                  <td width="71%"><input name="UserName" type="text" id="UserName" size="16" maxlength="20"></td>
                </tr>
                <tr> 
                  <td height="22"> <div align="right">����Ա���룺</div></td>
                  <td><input name="Password" type="password" size="16" maxlength="20"></td>
                </tr>
                <tr> 
                  <td height="22"> <div align="right">����ȷ�ϣ�</div></td>
                  <td><input name="ConPassword" type="password" size="16" maxlength="20"></td>
                </tr>
                <tr> 
                  <td height="22" colspan="2"><div align="center">
                      <INPUT type=submit value='ȷ�����' name=Submit2>
                    </div></td>
                </tr>
              </table></td>
          </form>
        </tr>
      </table>
      <br> 
      <table width="560" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
        <tr> 
          <td width="553" height="25" class="back_southidc"> <div align="center"><strong>����Ա�ʺŹ���</strong></div></td>
        </tr>
        <tr class="tr_southidc">          
            <td><br> 
              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="2">
                <tr bgcolor="#A4B6D7"> 
                  <td width="28%" height="25" bgcolor="#FFFFFF"> 
                  <div align="center">����Ա�ʺ�</div></td>
                  <td width="28%" bgcolor="#FFFFFF"> 
                  <div align="center">����Ա����</div></td>
                  <td width="24%" bgcolor="#FFFFFF"> 
                  <div align="center">����</div></td>
                  <td width="20%" bgcolor="#FFFFFF"> 
                  <div align="center">ɾ��</div></td>
                </tr>
<%				
set rs=server.createobject("adodb.recordset")
sql="select * from admin"
rs.open sql,conn,1,1
do while not rs.eof
%>
                <tr bgcolor="#DFEBF2"> 
                  <td height="22" bgcolor="#FFFFFF"> 
                  <div align="center"><%=rs("UserName")%></div></td>
                  <td bgcolor="#FFFFFF"> 
                  <div align="center"><%=rs("PassWord")%></div></td>
                  <td bgcolor="#FFFFFF"> 
                    <div align="center">
                      <%response.write "<a href='Admin_ManageEdit.asp?ID="&rs("Id")&"'>�޸�����</a>"%>
                  </div></td>
                  <td bgcolor="#FFFFFF"> 
                    <div align="center">
					<a href="Admin_Manage.asp?id=<%=rs("id")%>&mark=southidc" onClick="return ConfirmDel();"><font color="#FFFFFF">ɾ��</font></a>                    
                  </div></td>
                </tr>
<%
rs.movenext
loop
rs.close
%>
              </table></td>         
        </tr>
      </table>
      </td>
  </tr>
</table>
<!-- #include file="Inc/Foot.asp" -->
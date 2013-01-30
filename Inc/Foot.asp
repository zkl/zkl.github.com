<%
Set rs = Server.CreateObject("ADODB.Recordset")
sql="Select * from Bs_SysData where code='5062942'"
rs.Open sql,conn,1,1
%>
<TABLE  width="850" border=0 align="center" cellPadding=0 cellSpacing=0  style="background:#fff"> 
    <TR> 
      <TD height="5"></TD>
    </TR>    
    <TR> 
      <TD> <TABLE Class=FootBg  cellSpacing=0 cellPadding=0 width="100%" height="30" border=0>
          <TBODY>
            
            <TR> 
              
            <TD width="12%"> 
              <DIV align=center>友情链接:</DIV></TD>
              
            <TD width="88%">
			<%
set rs_links=server.createobject("adodb.recordset")
sqltext4="select top 11 * from FriendLinks"
rs_links.open sqltext4,conn,1,1		
%>
<%i=0
do while not rs_links.eof%>
			<a href="<%=rs_links("SiteUrl")%>"><%=rs_links("SiteName")%></a>&nbsp;&nbsp;&nbsp;&nbsp;
 <%rs_links.movenext
i=i+1
loop
rs_links.close %>
            </TD>
            </TR>          
         
        </TABLE></TD>
    </TR>    
    <TR> 
      
    <TD> 
      <DIV align=center> 
          
        <p>版权所有:<%=rs("BsCompanyName")%></p>
      </DIV></TD>
    </TR>
  </TBODY>
</TABLE>
<table  width="850" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><div align="center">
      <p>地址:<%=rs("BsAddress")%> 邮编:<%=rs("BsZipcode")%></p>
    </div></td>
  </tr>
</table>
<table  width="850" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><div align="center">
      <p>联系电话:<%=rs("BsPhone")%></p>
    </div></td>
  </tr>
</table>

<table  width="850" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><div align="center">
      <p><a href="http://www.miibeian.gov.cn/" target="_blank"><%=rs("BsBeian")%></p>
    </div></td>
  </tr>
</table>


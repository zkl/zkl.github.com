<%
Response.Cookies("skinid")=""&Request("no")&""
Response.Cookies("skinid").Expires=date+3650

url=Request.ServerVariables("http_referer")
if url<>empty then
response.redirect url
else
response.write "<SCRIPT>location='../index.asp';</SCRIPT>"
end if

%>
<%
'=========================================================
'
' 产品名称：中齐软件 公司(企业)网站管理系统（简称：liangjing.net）
' 版权所有：liangjing.net
' 程序制作：liangjing开发团队
' Copyright 2004-2005 liangjing.net - All Rights Reserved.
'
'========================================================
%>


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
' ��Ʒ���ƣ�������� ��˾(��ҵ)��վ����ϵͳ����ƣ�liangjing.net��
' ��Ȩ���У�liangjing.net
' ����������liangjing�����Ŷ�
' Copyright 2004-2005 liangjing.net - All Rights Reserved.
'
'========================================================
%>


<%@ LANGUAGE = VBScript %>
<!--#include file="conn.asp"-->
<!--#include file="admin.asp"-->
<!--#include file="../Inc/Config.asp"-->
<!--#include file="../Inc/Ubbcode.asp"-->
<!--#include file="Inc/Function.asp"-->
<%
ID=Request.Form("ID")
Title=Trim(request.form("Title"))
BigClassName=trim(request.form("BigClassName"))
SmallClassName=trim(request.form("SmallClassName"))
Content=trim(request.form("Content"))
System=trim(request.form("System"))
Language=trim(request.form("Language"))
Softclass=trim(request.form("Softclass"))
PhotoUrl=trim(request.form("PhotoUrl"))
DownloadUrl=trim(request.form("DownloadUrl"))
FileSize=trim(request.form("FileSize"))
AddDate=trim(request.form("AddDate"))
Action=trim(request("Action"))


if founderr=false then
	Title=dvhtmlencode(Title)	
	if AddDate<>"" and IsDate(AddDate)=true then
		AddDate=CDate(AddDate)
	else
		AddDate=now()
	end if	
	
	set rs=server.createobject("adodb.recordset")
	select case Action
	  case "Add"	
	  che()
		sql="select * from Download where (id is null)" 
		rs.open sql,conn,1,3
		rs.addnew
		call SaveData()		
		rs.update	
		rs.close
		set rs=nothing
		response.redirect "Down_Manage.asp"
	 case "Modify"	
  		if ID<>"" then
			sql="select * from Download where id="&ID
			rs.open sql,conn,1,3
			if not (rs.bof and rs.eof) then
				call SaveData()				
				rs.update
				rs.close
				set rs=nothing
	            response.redirect "Down_Manage.asp"
 			else
				founderr=true
				errmsg=errmsg+"<li>找不到此新闻，可能已经被删除。</li>"
				call WriteErrMsg()
			end if
		else
			founderr=true
			errmsg=errmsg+"<li>不能确定新闻ID的值</li>"
			call WriteErrMsg()
		end if
	 Case else
		founderr=true
		errmsg=errmsg+"<li>没有选定参数</li>"
		call WriteErrMsg()
	end select
	call CloseConn()
else
	WriteErrMsg
end if
%>

<%
sub SaveData()  
  rs("Title")=Title
  rs("Content")=Content 
  rs("BigClassName")=BigClassName
  rs("SmallClassName")=SmallClassName  
  rs("System")=System
  rs("Language")=Language
  rs("Softclass")=Softclass
  rs("PhotoUrl")=PhotoUrl
  rs("DownloadUrl")=DownloadUrl
  rs("FileSize")=FileSize  
  rs("AddDate")=AddDate    
end sub
%>


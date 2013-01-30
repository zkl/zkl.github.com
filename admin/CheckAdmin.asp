<%
'ÅÐ¶ÏÊÇ·ñµÇÂ¼»òµÇÂ¼³¬Ê±=====================================================
dim AdminAction
AdminAction=request.QueryString("AdminAction")
if ( AdminAction <> "Out") then
CheckUser("userName")
end if
select case AdminAction
  case "Out"
    call OutLogin()
  case else
    call Login()
end select
'========
sub Login()
  if session("AdminName")="" or session("UserName")="" or session("AdminPurview")="" or session("LoginSystem")<>"Succeed" then
	 response.redirect "Login.asp"
     response.end
  end if
end sub
'========
sub OutLogin()
  session.contents.remove "AdminName"
  session.contents.remove "UserName"
  session.contents.remove "AdminPurview"
  session.contents.remove "LoginSystem"
  session.contents.remove "VerifyCode"
  response.write "<script language=javascript>top.location.replace('Login.asp');</script>"
end sub
%>
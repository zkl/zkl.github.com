<%
'=================================
'
'
'=================================
%>
<html>
<head>
<meta http-equiv=Content-Type content=text/html;charset=gb2312>
<link href="Inc/southidc.css" rel="stylesheet" type="text/css">
<style type="text/css">
BODY {
	BACKGROUND:799ae1; MARGIN: 0px;
}

.sec_menu {
	BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid
}

.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 10px; COLOR: #215dc6; POSITION: relative; TOP: 2px 
}

.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 10px; COLOR: #428eff; POSITION: relative; TOP: 2px
}
</style>
</head>
<BODY>
<table cellspacing="0" cellpadding="0" width="158" align="center">
  <tr>
    <td valign="bottom" height="42"><img height="38" src="image/title.gif" width="158" border="0"></td>
  </tr>
  <tr>
    <td class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';" background="image/title_bg_quit.gif" height="25"><span><b><a target="_top" href="../index.asp"><font color="215DC6">回到首页</font></a></b> | <a target="_top" href="Loginout.asp"><font color="215DC6"><b>退出</b> </font></a></span></td>
  </tr>
  <tr>
    <td align="center" onMouseOver="aa('up')" onMouseOut="StopScroll()">&nbsp;</td>
  </tr>
</table>
<script>
var he=document.body.clientHeight-105
document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>
<table cellspacing="0" cellpadding="0" width="158" align="center">
  <tr>
    <td id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand" background=image/menudown.gif height="25"><span>系统管理 </span></td>
  </tr>
  <tr>
    <td id="submenu1" style="DISPLAY: none"><div class="sec_menu" style="WIDTH: 158px">
        <table cellspacing="3" cellpadding="0" width="130" align="center">
          <tr>
            <td><a target="main" href="Admin_Manage.asp">管理员管理</a></td>
          </tr>
          <!-- <tr> 
            <td><a target="main" href="Admin_AddAffiche.asp">网站公告</a></td>
          </tr>-->
          <tr>
            <td><a target="main" href="SiteConfig.asp">网站配置</a></td>
          </tr>
                  <tr> 
            <td><a target="main" href="SiteConfig2.asp">banner幻灯片</a></td>
          </tr>
		 <!--    <tr> 
            <td><a target="main" href="SiteConfig1.asp">banner幻灯片</a></td>
          </tr>-->
          <tr>
            <td><a target="main" href="Bs.asp"></a><a target="main" href="Admin_DataBackup.asp">数据库备份</a></td>
          </tr>
          <tr>
            <td><a target="main" href="Admin_UploadFileManage.asp">上传文件管理</a></td>
          </tr>
        </table>
      </div>
      <br>
    </td>
  </tr>
  <tr style="display:none">
    <td id="imgmenu2" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(2)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"><span>企业信息 </span></td>
  </tr>
  <tr>
    <td id="submenu2" style="DISPLAY: none"><div class="sec_menu" style="WIDTH: 158px">
        <table cellspacing="3" cellpadding="0" width="130" align="center">
          <tr>
            <td><a href="AdminAboutusAdd.asp" target="main">新增企业信息</a></td>
          </tr>
          <tr>
            <td><a href="AdminAboutus.asp" target="main">管理企业信息</a></td>
          </tr>
        </table>
      </div>
      <br>
    </td>
  </tr>
  <tr style="display:none">
    <td id="imgmenu5" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(5)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"><span>会员管理 </span></td>
  </tr>
  <tr>
    <td id="submenu5" style="DISPLAY: none"><div class="sec_menu" style="WIDTH: 158px">
        <table cellspacing="3" cellpadding="0" width="130" align="center">
          <tr>
            <td><a target="main" href="UserManage.asp"><font color="000000">注册会员管理</font></a></td>
          </tr>
        </table>
      </div>
      <br>
    </td>
  </tr>
  <tr style="display:none">
    <td id="imgmenu3" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(3)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"><span>产品管理 </span></td>
  </tr>
  <tr>
    <td id="submenu3" style="DISPLAY: none"><div class="sec_menu" style="WIDTH: 158px">
        <table cellspacing="3" cellpadding="0" width="130" align="center">
          <tr>
            <td><a target="main" href="ClassManage.asp"><font color="000000">产品类别</font></a></td>
          </tr>
          <tr>
            <td><a target="main" href="ProductManage.asp"><font color="000000">产品管理</font></a></td>
          </tr>
          <tr>
            <td><a target="main" href="ProductAdd.asp"><font color="000000">添加产品</font></a></td>
          </tr>
        </table>
      </div>
      <br>
    </td>
  </tr>
  <tr>
    <td id="imgmenu14" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(14)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"><span>项目管理 </span></td>
  </tr>
  <tr>
    <td id="submenu14" style="DISPLAY: none"><div class="sec_menu" style="WIDTH: 158px">
        <table cellspacing="3" cellpadding="0" width="130" align="center">
          <tr>
            <td><a href="News_add.asp" target="main">添加项目内容</a></td>
          </tr>
          <tr>
            <td><a href="News_Manage.asp" target="main">管理全部项目</a></td>
          </tr>
          <tr>
            <td><a href="News_ClassManage.asp" target="main">管理项目类别</a></td>
          </tr>
        </table>
      </div>
      <br>
    </td>
  </tr>
  <!--	 <tr>
    <td id="imgmenu7" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(7)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"><span>留言管理 </span></td>
  </tr>
  <tr>
    <td id="submenu7" style="DISPLAY: none"><div class="sec_menu" style="WIDTH: 158px">
        <table cellspacing="3" cellpadding="0" width="130" align="center">
          <tr>
            <td><a target="main" href="Admin_Feedback.asp"><font color="000000">留言管理</font></a></td>
          </tr>
        </table>
      </div>
      <br>
    </td>
  </tr>
 

<tr>
		
    <td id="imgmenu8" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(8)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"> 
      <span>荣誉管理 </span></td>
	</tr>
	<tr>
		<td id="submenu8" style="DISPLAY: none">
		<div class="sec_menu" style="WIDTH: 158px">
			<table cellspacing="3" cellpadding="0" width="130" align="center">
				<tr>
            <td><a target="main" href="Admin_Honor.asp"><font color="000000">企业荣誉管理</font></a></td>
          </tr>
				<tr>
            <td><a target="main" href="Admin_HonorAdd.asp"><font color="000000">添加企业荣誉</font></a></td>
          </tr>
			</table>
		</div>
		<br>		</td>
	</tr>	


<tr style="DISPLAY: none">
		
    <td id="imgmenu88" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(88)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"> 
      <span>案例管理 </span></td>
	</tr>
	<tr>
		<td id="submenu88" style="DISPLAY: none">
		<div class="sec_menu" style="WIDTH: 158px">
			<table cellspacing="3" cellpadding="0" width="130" align="center">
				<tr>
            <td><a target="main" href="Admin_CompVisualize.asp"><font color="000000">成功案例管理</font></a></td>
          </tr>
				<tr>
            <td><a target="main" href="Admin_CompVisualizeAdd.asp"><font color="000000">添加成功案例</font></a></td>
          </tr>
			</table>
		</div>
		<br>		</td>
	</tr>

	<tr style="DISPLAY: none">
		
    <td id="imgmenu10" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(10)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"> 
      <span>营销网络 </span></td>
	</tr>
	<tr>
		<td id="submenu10" style="DISPLAY: none">
		<div class="sec_menu" style="WIDTH: 158px">
			<table cellspacing="3" cellpadding="0" width="130" align="center">
				<tr>
            <td><a target="main" href="Admin_HomeMarket.asp"><font color="000000">国内市场</font></a></td>
          </tr>

			</table>
		</div>
		<br>		</td>
	</tr>

  <tr>
    <td id="imgmenu9" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(9)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"><span>人才管理 </span></td>
  </tr>
  <tr>
    <td id="submenu9" style="DISPLAY: none"><div class="sec_menu" style="WIDTH: 158px">
        <table cellspacing="3" cellpadding="0" width="130" align="center">
          <tr>
            <td><a target="main" href="Admin_HrDemand.asp"><font color="000000">招聘管理</font></a></td>
          </tr>
          <tr>
            <td><a target="main" href="Admin_HrDemandAdd.asp"><font color="000000">发布招聘</font></a></td>
          </tr>
          <tr>
            <td><a target="main" href="Admin_HrManage.asp"><font color="000000">应聘管理</font></a></td>
          </tr>
        </table>
      </div>
      <br>
    </td>
  </tr>
  <tr>
    <td id="imgmenu13" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(13)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="image/menudown.gif" height="25"><span>友情链接 </span></td>
  </tr>
  <tr>
    <td id="submenu13" style="DISPLAY: none"><div class="sec_menu" style="WIDTH: 158px">
        <table cellspacing="3" cellpadding="0" width="130" align="center">
          <tr>
            <td><a target="main" href="Admin_FriendLinks.asp"><font color="000000">友情链接管理</font></a></td>
          </tr>
        </table>
      </div>
      <br>
    </td>
  </tr>-->
</table>
<table cellspacing="0" cellpadding="0" width="158" align="center">
  <tr>
    <td class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';" background="image/title_bg_quit.gif" height="25"><span>Web Information</span> </td>
  </tr>
  <tr>
    <td><div class="sec_menu" style="WIDTH: 158px">
        <div align="center">
          <table cellspacing="4" cellpadding="3">
            <tr>
              <td width="141" height="20" style="line-height: 150%;"> 中齐互联<font color="#FF0000"> </font></td>
            </tr>
          </table>
        </div>
      </div></td>
  </tr>
</table>
</div>
<table cellspacing="0" cellpadding="0" width="158" align="center">
  <tr>
    <td align="center" onMouseOver="aa('Down')" onMouseOut="StopScroll()" valign="bottom">&nbsp;</td>
  </tr>
</table>
<script>

function aa(Dir)
{tt.doScroll(Dir);Timer=setTimeout('aa("'+Dir+'")',100)}//这里100为滚动速度
function StopScroll(){if(Timer!=null)clearTimeout(Timer)}

function initIt(){
divColl=document.all.tags("DIV");
for(i=0; i<divColl.length; i++) {
whichEl=divColl(i);
if(whichEl.className=="child")whichEl.style.display="none";}
}
function expands(el) {
whichEl1=eval(el+"Child");
if (whichEl1.style.display=="none"){
initIt();
whichEl1.style.display="block";
}else{whichEl1.style.display="none";}
}
var tree= 0;
function loadThreadFollow(){
if (tree==0){
document.frames["hiddenframe"].location.replace("LeftTree.asp");
tree=1
}
}

function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="image/menuup.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="image/menudown.gif";
}
}

function loadingmenu(id){
var loadmenu =eval("menu" + id);
if (loadmenu.innerText=="Loading..."){
document.frames["hiddenframe"].location.replace("LeftTree.asp?menu=menu&id="+id+"");
}
}
top.document.title="企业网站管理后台"; 
</script>
</BODY>
</HTML>

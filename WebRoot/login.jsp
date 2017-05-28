<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 
<%
session.removeAttribute("admin");
session.removeAttribute("utype");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title> </title>

<LINK 
href="commfiles/public.css" type=text/css rel=stylesheet />
<LINK 
href="commfiles/login.css" type=text/css rel=stylesheet />
<script language="javascript">
function  subCheck()  
{  
if(event.keyCode==13)  
{  
document.form1.submit();  
}  
}  

  function changeImg(obImg,sNewURL)
  {
       if(sNewURL!="") obImg.src=sNewURL;
  }
  </script>


<script language="javascript">
function execute(opt){

		var urlHtml = "";
		var wndName = "Apabi_" + Math.ceil(Math.random()*10); 
		var sFeaturs = "height=" + (screen.height) + 
					   ",width=" + (screen.width) + 
					   ",scrollbars=no,resizable=yes,location=no,menubar=no,toolbar=no,status=yes,top=0,left=0";
		window.open("", "_self");
		if (opt == "login"){
			urlHtml = "./pages/sys/index.html";
		}else if(opt == "userQuery"){
			urlHtml = "./pages/userQuery/userQueryIndex.html";
		}
		var work = window.open(urlHtml,wndName,sFeaturs);
		window.opener = null;
		window.close();
}
</script>

<SCRIPT language=javascript src="js/jQuery.js"></SCRIPT>

<SCRIPT language=javascript src="js/login.js"></SCRIPT>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 22px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
</head>

<body id="login_bg" onkeydown="sub();" >
<script language="javascript">
function sub()
{
if(window.event.keyCode==13) 
{
f1.submit();
}
}
</script>







  <form action="/massorganiza/massorganiza?ac=login&a=a" method="post" name="f1">
<DIV id=div1  >
  <TABLE id=login height="100%"  cellSpacing=0 cellPadding=0 width=800 
align=center>
    <TBODY>
      <TR id=main>
        <TD>
          <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
            <TBODY>
              <TR>
                <TD colSpan=6 align="center" valign="bottom"><span class="STYLE1"> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                
                
                 <font    style="font-weight: 900;FONT-FAMILY: 华文行楷">操作系统教学系统</font>
                
                </span></TD>
              </TR>
              <TR height=30>
                <TD width=380>&nbsp;</TD>
                <TD colspan="4" align="center">&nbsp;</TD>
                <TD>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD rowSpan=4>&nbsp;</TD>
                <TD width="53">用户名：</TD>
                <TD colspan="3">
                  <INPUT class=textbox id=username name=username />                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD>密　码：</TD>
                <TD colspan="3">
                  <INPUT class=textbox id=password type=password 
            name=password />                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD valign="middle">验证码：</TD>
                <TD width="69" vAlign=middle>
                  <INPUT id=pagerandom size=4 name=pagerandom />
                   </img>  </TD>
                <TD width="77" vAlign=middle><img src="/massorganiza/admin/ma.jsp" id="yzm" ></TD>
                <TD width="97" vAlign=middle><span onClick="ma();" style="cursor: hand"  ><font color="white">换一张</font></span>
                  <script type="text/javascript">
                              function ma()
                              {
                              var a = document.getElementById("yzm");
                              var myDate=new Date()
                              a.src="/massorganiza/admin/ma.jsp?d="+myDate;
                              }
                              
                              
                              </script></TD>
                <TD vAlign=center>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD></TD>
                <TD colspan="3" align=right>
                <img src="commfiles/denglu.png" width="46" height="23" onClick="JavaScript:document.f1.submit();" style="cursor:hand" onMouseOver="changeImg(this,'commfiles/denglu1.png');" onMouseOut="changeImg(this,'commfiles/denglu.png');" />                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=110>
                <TD colSpan=6>&nbsp;</TD>
              </TR>
            </TBODY>
          </TABLE>
        </TD>
      </TR>
      <TR id=root height=104>
        <TD align="center">
        版权所有：计科11级（3）班<br />
        技术支持： 计算机学院<br />
        本系统要求：显示器分辨率1024*768最佳
        
        
        </TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>
<DIV id=div2 style="DISPLAY: none"></DIV>
</CONTENTTEMPLATE>
</form>
</body>
</html>
<%
if(request.getAttribute("error")!=null)
{
 %>
 <script type="text/javascript">
<!--
alert("用户名或密码错误");
//-->
</script>
<%}%>

<%
if(request.getAttribute("roleerror")!=null)
{
 %>
 <script type="text/javascript">
<!--
alert("该用户无任何权限");
//-->
</script>
<%}%>

<script type="text/javascript">
<%
String error=(String)request.getAttribute("error");
String random=(String)request.getAttribute("random");
if(error!=null)
{
 %>
// alert("用户名或密码错误");
 <%}else if(random!=null){%>
  alert("验证码输入错误");
 <%}%>
 </script>


<script type="text/javascript">
<!--
document.getElementById("username").focus();
//-->
</script>
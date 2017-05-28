<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD id=Head1>
<TITLE>无标题页</TITLE>


<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css> 
*{
	FONT-SIZE: 12px; COLOR: white
}
#logo {
	COLOR: white
}
#logo A {
	COLOR: white
}
FORM {
	MARGIN: 0px
}
</STYLE>
 
<SCRIPT src="/massorganiza/commfiles/Clock.js" type=text/javascript></SCRIPT>
<META content="MSHTML 6.00.2900.5848" name=GENERATOR>
</HEAD>
<BODY 
style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg.gif); MARGIN: 0px; BACKGROUND-REPEAT: repeat-x">
<form id="form1">
  <DIV id=logo  
style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/logoo.png); BACKGROUND-REPEAT: no-repeat">

<div style="position: absolute; line-height:100px; left: 15px ; top: -10px;">

 <font    style="font-weight: 900;font-size: 25px" face="华文行楷">
 
 &nbsp;&nbsp;&nbsp;&nbsp;
 
 学院社团管理系统
   
 </font>

</div>

    <DIV 
style="PADDING-RIGHT: 50px; BACKGROUND-POSITION: right 50%; DISPLAY: block; PADDING-LEFT: 0px; BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg_banner_menu.gif); PADDING-BOTTOM: 0px; PADDING-TOP: 3px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 30px; TEXT-ALIGN: right">
 

 &nbsp; <A id=HyperLink3 
href="/massorganiza/index.jsp?zx=zx" target="_top">退出系统</A> </DIV>
    <DIV style="DISPLAY: block; HEIGHT: 54px"></DIV>
    <DIV 
style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg_nav.gif); BACKGROUND-REPEAT: repeat-x; HEIGHT: 30px">
      <TABLE cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
          <TR>
            <TD>
              <DIV><IMG src="/massorganiza/commfiles/nav_pre.gif" align=absMiddle> 欢迎 <SPAN 
      id=lblBra></SPAN> <%=Info.getUser(request).get("tname") %>&nbsp;&nbsp;&nbsp;<SPAN id=lblDep><%=Info.getUser(request).get("uname") %></SPAN> [<%=Info.getUser(request).get("utype") %>] 光临 </DIV>
            </TD>
            <TD align=right width="70%"><SPAN style="PADDING-RIGHT: 50px">  <SPAN 
      id=clock></SPAN></SPAN></TD>
          </TR>
        </TBODY>
      </TABLE>
    </DIV>
  </DIV>
  <SCRIPT type=text/javascript>
    var clock = new Clock();
    clock.display(document.getElementById("clock"));
</SCRIPT>
</form>
</BODY>
</HTML>





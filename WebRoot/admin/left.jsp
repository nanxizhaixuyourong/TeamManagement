<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Functions"%>
<%@page import="util.Info"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>无标题页</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css> 
{
	FONT-SIZE: 12px
}
#menuTree A {
	COLOR: #566984; TEXT-DECORATION: none
}
</STYLE>
<SCRIPT src="/massorganiza/commfiles/TreeNode.js" type=text/javascript></SCRIPT>
<SCRIPT src="/massorganiza/commfiles/Tree.js" type=text/javascript></SCRIPT>
<META content="MSHTML 6.00.2900.5848" name=GENERATOR>
</HEAD>
<BODY 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg.gif); BACKGROUND-REPEAT: repeat-x">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
    <TR>
      <TD width=10 height=29><IMG src="/massorganiza/commfiles/bg_left_tl.gif"></TD>
      <TD 
    style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg_left_tc.gif); COLOR: white; FONT-FAMILY: system">Main 
        Menu</TD>
      <TD width=10><IMG src="/massorganiza/commfiles/bg_left_tr.gif"></TD>
    </TR>
    <TR>
      <TD style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg_left_ls.gif)"></TD>
      <TD id=menuTree 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; HEIGHT: 100%; BACKGROUND-COLOR: white" 
    vAlign=top></TD>
      <TD style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg_left_rs.gif)"></TD>
    </TR>
    <TR>
      <TD width=10><IMG src="/massorganiza/commfiles/bg_left_bl.gif"></TD>
      <TD style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg_left_bc.gif)"></TD>
      <TD width=10><IMG 
src="/massorganiza/commfiles/bg_left_br.gif"></TD>
    </TR>
  </TBODY>
</TABLE>
<SCRIPT type=text/javascript> 
var tree = null;
 
<%
if(Info.getUser(request).get("utype").equals("管理员")){
%>
var fun01 = new TreeNode('功能菜单');
 
var fun0101 = new TreeNode('网站公告', '/massorganiza/admin/cknoticescx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0101);   
var fun0108 = new TreeNode('院系管理', '/massorganiza/admin/xydatadiccx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0108);
var fun0108 = new TreeNode('班级管理', '/massorganiza/admin/bjdatadiccx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0108);
 var fun0108 = new TreeNode('学院简介', '/massorganiza/admin/wzjj.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0108);
 var fun0108 = new TreeNode('社团信息管理', '/massorganiza/admin/masscx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0108);
var fun0102 = new TreeNode('社团活动管理', '/massorganiza/admin/ninfoscx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0102);
var fun0109 = new TreeNode('关于我们', '/massorganiza/admin/gywm.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0109);
var fun0110 = new TreeNode('友情链接', '/massorganiza/admin/yqljcx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0110);
var fun0110 = new TreeNode('留言管理', '/massorganiza/admin/messagescx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0110);
 var fun0108 = new TreeNode('公告管理', '/massorganiza/admin/tnoticescx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0108);
var fun0104 = new TreeNode('管理员信息维护', '/massorganiza/admin/sysusercx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0104); 
var fun0108 = new TreeNode('会员信息维护', '/massorganiza/admin/xssysusercx.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun01.add(fun0108);


tree = new Tree(fun01);
tree.show('menuTree');
<%}%>






var fun05 = new TreeNode('个人信息配置');

 
 var fun0501 = new TreeNode('查看个人信息', '/massorganiza/admin/cksysuserxg.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun05.add(fun0501);
var fun0501 = new TreeNode('修改个人信息', '/massorganiza/admin/psysuserxg.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun05.add(fun0501);

var fun0502 = new TreeNode('修改密码', '/massorganiza/admin/updatepwd.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun05.add(fun0502);

tree = new Tree(fun05);
tree.show('menuTree');

</SCRIPT>

</BODY>
</HTML>


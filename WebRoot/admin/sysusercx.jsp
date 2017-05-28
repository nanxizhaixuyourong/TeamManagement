<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
  <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/massorganiza/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/massorganiza/commfiles/css/style.css" /> 
	<script type="text/javascript" src="/massorganiza/commfiles/js/popup.js"></script>
  </head>
   
 <BODY 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg.gif); BACKGROUND-REPEAT: repeat-x">
	<form name="f1" method="post"  action="sysusercx.jsp"   >
  


<table>
<tr><td height="10"> </td></tr>
</table>

<DIV>
  <TABLE height="96%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">管理员信息管理</SPAN><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><br></TD>
        <TD 
    style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_rc.gif)" 
    width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_ls.gif)">&nbsp;</TD>
        <TD 
    style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; COLOR: #566984; PADDING-TOP: 5px; BACKGROUND-COLOR: white" 
    vAlign=top align=middle>
          <DIV>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td colspan=8 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp;&nbsp;
<% 
String puname = request.getParameter("uname")==null?"":request.getParameter("uname"); 
String startuname = request.getParameter("startuname")==null?"":request.getParameter("startuname"); 
String enduname = request.getParameter("enduname")==null?"":request.getParameter("enduname"); 
String ptname = request.getParameter("tname")==null?"":request.getParameter("tname"); 
String starttname = request.getParameter("starttname")==null?"":request.getParameter("starttname"); 
String endtname = request.getParameter("endtname")==null?"":request.getParameter("endtname"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
用户名 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='uname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
姓名 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='tname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
<input type=button   class='' value='添加信息' onclick="window.location.replace('xssysusertj.jsp')" /> 
&nbsp;&nbsp;</td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="12"  background="/massorganiza/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle" >用户名</td>
<td  class="itemtitle" >姓名</td>
<td  class="itemtitle" >性别</td>
<td  class="itemtitle" >年龄</td>
<td  class="itemtitle" >联系电话</td>
<td  class="itemtitle" >联系QQ</td>
<td  class="itemtitle" >操作</td>
         </tr>
        
      
        <% 
new CommDAO().delete(request,"sysuser"); 
if(request.getParameter("statusid1")!=null){ 
 new CommDAO().commOper("update sysuser set status ='' where id="+request.getParameter("statusid1"));  
} 
if(request.getParameter("statusid2")!=null){ 
 new CommDAO().commOper("update sysuser set status ='' where id="+request.getParameter("statusid2"));  
} 
String sql = "select * from sysuser where 1=1 " ;
 if(!puname.equals("")){ 
 sql+= " and uname like'%"+puname+"%' " ;
 }  
 if(!startuname.equals("")){  
 mmm.put("startuname",startuname) ;
 sql+= " and uname >'"+startuname+"' " ;
 }  
 if(!enduname.equals("")){  
 mmm.put("enduname",enduname) ;
 sql+= " and uname <'"+Info.getDay(enduname,1)+"' " ;
 }  
 if(!ptname.equals("")){ 
 sql+= " and tname like'%"+ptname+"%' " ;
 }  
 if(!starttname.equals("")){  
 mmm.put("starttname",starttname) ;
 sql+= " and tname >'"+starttname+"' " ;
 }  
 if(!endtname.equals("")){  
 mmm.put("endtname",endtname) ;
 sql+= " and tname <'"+Info.getDay(endtname,1)+"' " ;
 }  
  sql +="  and (1!=1 " ; 
  sql +="  or  utype like'%管理员%' " ;
  sql +="  ) ";
  sql +=" order by id desc ";
String url = "sysusercx.jsp?1=1&uname="+puname+"&tname="+ptname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center" height="28"><%=map.get("uname")%></td>
          <td align="center" height="28"><%=map.get("tname")%></td>
          <td align="center" height="28"><%=map.get("sex")%></td>
          <td align="center" height="28"><%=map.get("age")%></td>
          <td align="center" height="28"><%=map.get("tel")%></td>
          <td align="center" height="28"><%=map.get("qq")%></td>
          <td align="center" height="28">
<a href="xssysuserxg.jsp?id=<%=map.get("id")%>">修改</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="sysusercx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
     
        
        <tr align="center">
          <td colspan=8 align="right" >${page.info}</td>
        </tr>
      </table>
      
       
        </DIV>
        </TD>
        <TD style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_lf.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_fs.gif)"></TD>
        <TD 
style="BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_rf.gif)"></TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>

      
      
      
  </form>
</body>
</html>
 <script language=javascript src='/massorganiza/js/ajax.js'></script>
<% 
mmm.put("uname",puname); 
mmm.put("tname",ptname); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/massorganiza/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/massorganiza/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('xssysuserxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('xssysusertj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 

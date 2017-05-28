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
	<link rel="stylesheet" type="text/css" href="/infocollege/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/infocollege/commfiles/css/style.css" /> 
	<script type="text/javascript" src="/infocollege/commfiles/js/popup.js"></script>
  </head>
   
 <BODY 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(/infocollege/commfiles/bg.gif); BACKGROUND-REPEAT: repeat-x">
	<form name="f1" method="post"  action="tyqljcx.jsp"   >
  


<table>
<tr><td height="10"> </td></tr>
</table>

<DIV>
  <TABLE height="96%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(/infocollege/commfiles/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(/infocollege/commfiles/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(/infocollege/commfiles/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(/infocollege/commfiles/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">友情链接</SPAN><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(/infocollege/commfiles/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><br></TD>
        <TD 
    style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(/infocollege/commfiles/main_rc.gif)" 
    width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(/infocollege/commfiles/main_ls.gif)">&nbsp;</TD>
        <TD 
    style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; COLOR: #566984; PADDING-TOP: 5px; BACKGROUND-COLOR: white" 
    vAlign=top align=middle>
          <DIV>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td colspan=4 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp;&nbsp;
<% 
String pljname = request.getParameter("ljname")==null?"":request.getParameter("ljname"); 
String startljname = request.getParameter("startljname")==null?"":request.getParameter("startljname"); 
String endljname = request.getParameter("endljname")==null?"":request.getParameter("endljname"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
链接名称 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='ljname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
<input type=button   class=''  value='添加信息' onclick="add();" /> &nbsp;&nbsp;</td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="12"  background="/infocollege/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle" >链接名称</td>
<td  class="itemtitle" >链接地址</td>
<td  class="itemtitle" >操作</td>
         </tr>
        
      
        <% 
new CommDAO().delete(request,"yqlj"); 
if(request.getParameter("ljnameid1")!=null){ 
 new CommDAO().commOper("update yqlj set ljname ='' where id="+request.getParameter("ljnameid1"));  
} 
if(request.getParameter("ljnameid2")!=null){ 
 new CommDAO().commOper("update yqlj set ljname ='' where id="+request.getParameter("ljnameid2"));  
} 
String sql = "select * from yqlj where 1=1 " ;
 if(!pljname.equals("")){ 
 sql+= " and ljname like'%"+pljname+"%' " ;
 }  
 if(!startljname.equals("")){  
 mmm.put("startljname",startljname) ;
 sql+= " and ljname >'"+startljname+"' " ;
 }  
 if(!endljname.equals("")){  
 mmm.put("endljname",endljname) ;
 sql+= " and ljname <'"+Info.getDay(endljname,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "tyqljcx.jsp?1=1&ljname="+pljname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center"><%=map.get("ljname")%></td>
          <td align="center"><%=map.get("ljurl")%></td>
          <td align="center">
<a href="javascript:update('<%=map.get("id")%>')">修改</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a onclick="return confirm('确定要删除这条记录吗?')"  href="tyqljcx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
     
        
        <tr align="center">
          <td colspan=4 align="right" >${page.info}</td>
        </tr>
      </table>
      
       
        </DIV>
        </TD>
        <TD style="BACKGROUND-IMAGE: url(/infocollege/commfiles/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(/infocollege/commfiles/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACKGROUND-IMAGE: url(/infocollege/commfiles/main_lf.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(/infocollege/commfiles/main_fs.gif)"></TD>
        <TD 
style="BACKGROUND-IMAGE: url(/infocollege/commfiles/main_rf.gif)"></TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>

      
      
      
  </form>
</body>
</html>
 <script language=javascript src='/infocollege/js/ajax.js'></script>
<% 
mmm.put("ljname",pljname); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/infocollege/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/infocollege/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('tyqljxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('tyqljtj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 

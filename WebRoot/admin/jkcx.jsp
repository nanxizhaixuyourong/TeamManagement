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
	<form name="f1" method="post"  action="jkcx.jsp"   >
  


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
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">监考信息查询</SPAN><SPAN 
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
     				 <td colspan=7 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp;&nbsp;
<% 
String pkechen = request.getParameter("kechen")==null?"":request.getParameter("kechen"); 
String startkechen = request.getParameter("startkechen")==null?"":request.getParameter("startkechen"); 
String endkechen = request.getParameter("endkechen")==null?"":request.getParameter("endkechen"); 
String pteacher = request.getParameter("teacher")==null?"":request.getParameter("teacher"); 
String startteacher = request.getParameter("startteacher")==null?"":request.getParameter("startteacher"); 
String endteacher = request.getParameter("endteacher")==null?"":request.getParameter("endteacher"); 
String pbclass = request.getParameter("bclass")==null?"":request.getParameter("bclass"); 
String startbclass = request.getParameter("startbclass")==null?"":request.getParameter("startbclass"); 
String endbclass = request.getParameter("endbclass")==null?"":request.getParameter("endbclass"); 
   %>

<%
 HashMap mmm = new HashMap();%> 
课程 &nbsp;:&nbsp; <%=Info.getselect("kechen","kechens","kename"," 1=1 ")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
教师 &nbsp;:&nbsp; <%=Info.getselect("teacher","sysuser","uname","utype='教师'")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
班级 &nbsp;:&nbsp; <%=Info.getselect("bclass","datadic","dvalue","dtype='班级'")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;<input type=submit class='' value='查询信息' /> &nbsp; &nbsp; &nbsp; <br></td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="12"  background="/massorganiza/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle" >课程</td>
<td  class="itemtitle" >教师</td>
<td  class="itemtitle" >教室</td>
<td  class="itemtitle" >班级</td>
<td  class="itemtitle" >考试名称</td> 
         </tr>
        
      
        <% 
new CommDAO().delete(request,"jiankao"); 
if(request.getParameter("kechenid1")!=null){ 
 new CommDAO().commOper("update jiankao set kechen ='' where id="+request.getParameter("kechenid1"));  
} 
if(request.getParameter("kechenid2")!=null){ 
 new CommDAO().commOper("update jiankao set kechen ='' where id="+request.getParameter("kechenid2"));  
} 
String sql = "select * from jiankao where 1=1 " ;
 if(!pkechen.equals("")){ 
 sql+= " and kechen like'%"+pkechen+"%' " ;
 }  
 if(!startkechen.equals("")){  
 mmm.put("startkechen",startkechen) ;
 sql+= " and kechen >'"+startkechen+"' " ;
 }  
 if(!endkechen.equals("")){  
 mmm.put("endkechen",endkechen) ;
 sql+= " and kechen <'"+Info.getDay(endkechen,1)+"' " ;
 }  
 if(!pteacher.equals("")){ 
 sql+= " and teacher like'%"+pteacher+"%' " ;
 }  
 if(!startteacher.equals("")){  
 mmm.put("startteacher",startteacher) ;
 sql+= " and teacher >'"+startteacher+"' " ;
 }  
 if(!endteacher.equals("")){  
 mmm.put("endteacher",endteacher) ;
 sql+= " and teacher <'"+Info.getDay(endteacher,1)+"' " ;
 }  
 if(!pbclass.equals("")){ 
 sql+= " and bclass like'%"+pbclass+"%' " ;
 }  
 if(!startbclass.equals("")){  
 mmm.put("startbclass",startbclass) ;
 sql+= " and bclass >'"+startbclass+"' " ;
 }  
 if(!endbclass.equals("")){  
 mmm.put("endbclass",endbclass) ;
 sql+= " and bclass <'"+Info.getDay(endbclass,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "jkcx.jsp?1=1&kechen="+pkechen+"&teacher="+pteacher+"&bclass="+pbclass+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center"><%=map.get("kechen")%></td>
          <td align="center"><%=map.get("teacher")%></td>
          <td align="center"><%=map.get("croom")%></td>
          <td align="center"><%=map.get("bclass")%></td>
          <td align="center"><%=map.get("ksname")%></td>
         
</tr>
<%}%>
     
        
        <tr align="center">
          <td colspan=7 align="right" colspan="8">${page.info}</td>
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
mmm.put("kechen",pkechen); 
mmm.put("teacher",pteacher); 
mmm.put("bclass",pbclass); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/massorganiza/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/massorganiza/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('jiankaoxg.jsp?id='+no,'信息修改',550,350) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('jiankaotj.jsp','信息添加',550,350) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 

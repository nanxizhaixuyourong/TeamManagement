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
		<link rel="stylesheet" type="text/css"
			href="/massorganiza/commfiles/css/common.css" />
		<link rel="stylesheet" type="text/css"
			href="/massorganiza/commfiles/css/style.css" />

	</head>
      
       
<% 
new CommDAO().delete(request,"messages"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"messages",ext,true,true); 
HashMap mmm = new CommDAO().getmap(id,"messages"); 
%>
<body  >
		
            
            
            
      
	<form name="f1" method="post"    action="messagesxg.jsp?f=f&id=<%=mmm.get("id")%>"   onSubmit="return checkform()" >

<table width="99%" border="0" align="center" cellpadding="0"
				cellspacing="0" class="mytab" id="table1">
				<tr align="center">
					<td colspan="2"  background="/massorganiza/commfiles/images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"> 
						回复留言</td>
				</tr>
				 
				
				<tr align="center">
					<td width="18%" align="center"> 
						回复内容</td>
					<td width="82%" align="left">  <textarea  cols='35'   style='margin-top: 1px;margin-bottom: 1px'  class=''   name='recontent'   ></textarea></td>
				</tr>
 
				
				


				<tr align="center">
					<td height="30" colspan="2" align="center">
						<label>
							<input type="submit" name="button" id="button" value="提交信息">
						</label>
						&nbsp;&nbsp;
				  <input type=button value='返回上页' onclick='popclose();' />			</td>
				</tr>
			</table>
            
</form>
	</body>
</html>
  
<script language=javascript src='/massorganiza/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/massorganiza/js/ajax.js'></script> 
<script language=javascript src='/massorganiza/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 if(parent.document.getElementsByTagName("iframe").length>0){
var alliframe = parent.document.getElementsByTagName("iframe")[0]; 
alliframe.style.height=document.body.scrollHeight+4; 
} 
</script>  
<%=Info.tform(mmm)%> 

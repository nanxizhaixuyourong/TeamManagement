<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
   <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
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
new CommDAO().delete(request,"notices"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"notices",ext,true,true); 
HashMap mmm = new CommDAO().getmap(id,"notices"); 
%>
<body  >
		
            
            
            
      
	<form name="f1" method="post"    action="noticesxg.jsp?f=f&id=<%=mmm.get("id")%>"   onSubmit="return checkform()" >

<table width="99%" border="0" align="center" cellpadding="0"
				cellspacing="0" class="mytab" id="table1">
				<tr align="center">
					<td colspan="2"  backmassorganizaxzyxxkcxt/commfiles/images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"> 
						修改公告信息</td>
				</tr>
				 
				
				<tr align="center">
					<td width="18%" align="center"> 
						标题</td>
					<td width="82%" align="left">  <input type=text  class='' id='title' name='title' size=35 /><label id='clabeltitle' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						内容</td>
					<td width="82%" align="left">  <textarea  cols='35'   style='margin-top: 1px;margin-bottom: 1px'  class=''   name='ncontent'   ></textarea></td>
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
  
<script language=javascmassorganiza/gxzyxxkcxt/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javasmassorganiza'/gxzyxxkcxt/js/ajax.js'></script> 
<script language=javamassorganiza='/gxzyxxkcxt/js/popup.js'></script> 
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
var titleobj = document.getElementById("title");  
if(titleobj.value==""){  
document.getElementById("clabeltitle").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";  
return false;  
}else{ 
document.getElementById("clabeltitle").innerHTML="  ";  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 

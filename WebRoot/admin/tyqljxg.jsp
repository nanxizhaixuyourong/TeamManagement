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
    </head>
      
       
<% 
new CommDAO().delete(request,"yqlj"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"yqlj",ext,true,true); 
HashMap mmm = new CommDAO().getmap(id,"yqlj"); 
%>
<body  >
		
            
            
            
      
	<form name="f1" method="post"    action="tyqljxg.jsp?f=f&id=<%=mmm.get("id")%>"   onSubmit="return checkform()" >

<table width="99%" border="0" align="center" cellpadding="0"
				cellspacing="0" class="mytab" id="table1">
				<tr align="center">
					<td colspan="2"  background="/infocollege/commfiles/images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"> 
						修改链接</td>
				</tr>
				 
				
				<tr align="center">
					<td width="18%" align="center">链接名称</td>
					<td width="82%" align="left"><%=Info.getselect("ljname","sysuser","uname~无名","utype='教师'")%><label id='clabelljname' />
</td>
				</tr>
<tr align="center">
					<td width="18%" align="center">链接地址</td>
					<td width="82%" align="left"><input type=text readonly style='background-color:#EBEBE4'  class='' id='ljurl' name='ljurl' size=35 /><label id='clabelljurl' /></td>
				</tr><script language=javascript> 
function ljurlljnamechange(){ 
document.getElementById("ljname").onchange=function(){
ljurlljnamechange();  
 
} 
var ljnamevalue = document.getElementById("ljname").value; 
var ljurlobj = document.getElementById("ljurl"); 
ljurlobj.value=''; 
var ajax = new AJAX(); 
ajax.post("/infocollege/factory/getsonops.jsp?glb=sysuser&glzd=tname~无名&jlzd=ljname&jlzdb=uname&value="+ljnamevalue+"&ctype=text&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
ljurlobj.value=msg; 
} 
</script> 



				
				


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
  
<script language=javascript src='/infocollege/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/infocollege/js/ajax.js'></script> 
<script language=javascript src='/infocollege/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
ljurlljnamechange();  
 
</script>  
<script language=javascript >  
 function checkform(){  
var ljnameobj = document.getElementById("ljname");  
if(ljnameobj.value==""){  
document.getElementById("clabelljname").innerHTML="&nbsp;&nbsp;<font color=red>请输入链接名称</font>";  
return false;  
}else{ 
document.getElementById("clabelljname").innerHTML="  ";  
}  
return true;   
}   
if(parent.document.getElementsByTagName("iframe").length>0){
var alliframe = parent.document.getElementsByTagName("iframe")[0]; 
alliframe.style.height=document.body.scrollHeight+3; 
} 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
ljurlljnamechange(); 
</script>  
<%=Info.tform(mmm)%> 

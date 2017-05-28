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
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
new CommDAO().insert(request,response,"yqlj",ext,true,true); 
%>
<body  >
		
            
            
            
      
	<form name="f1" method="post"    action="yqljtj.jsp?f=f&tglparentid=<%=tglparentid%>"   onSubmit="return checkform()" >

<table width="99%" border="0" align="center" cellpadding="0"
				cellspacing="0" class="mytab" id="table1">
				<tr align="center">
					<td colspan="2"  background="/massorganiza/commfiles/images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"> 
						添加链接</td>
				</tr>
				 
				
				<tr align="center">
					<td width="18%" align="center"> 
						链接名称</td>
					<td width="82%" align="left">  <input type=text  class='' id='ljname' name='ljname' size=45 /><label id='clabelljname' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						链接地址</td>
					<td width="82%" align="left">  <input type=text  class='' id='ljurl' name='ljurl' size=45 /><label id='clabelljurl' /></td>
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
<script language=javascript src='/massorganiza/js/popup.js'></script>
<script language=javascript src='/massorganiza/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var ljnameobj = document.getElementById("ljname");  
if(ljnameobj.value==""){  
document.getElementById("clabelljname").innerHTML="&nbsp;&nbsp;<font color=red>请输入链接名称</font>";  
return false;  
}else{
document.getElementById("clabelljname").innerHTML="  ";  
}  
  
var ljurlobj = document.getElementById("ljurl");  
if(ljurlobj.value==""){  
document.getElementById("clabelljurl").innerHTML="&nbsp;&nbsp;<font color=red>请输入链接地址</font>";  
return false;  
}else{
document.getElementById("clabelljurl").innerHTML="  ";  
}  
  
return true;   
}   

if(parent.document.getElementsByTagName("iframe").length>0){
var alliframe = parent.document.getElementsByTagName("iframe")[0]; 
alliframe.style.height=document.body.scrollHeight+4; 
} 
</script>  

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
new CommDAO().insert(request,response,"notices",ext,true,true); 
%>
<body  >
		
            
            
            
      
	<form name="f1" method="post"    action="tnoticestj.jsp?f=f&tglparentid=<%=tglparentid%>"   onSubmit="return checkform()" >

<table width="99%" border="0" align="center" cellpadding="0"
				cellspacing="0" class="mytab" id="table1">
				<tr align="center">
					<td colspan="2"  backgromassorganizaxxglxt/commfiles/images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"> 
						添加公告</td>
				</tr>
				 
				
				<tr align="center">
					<td width="18%" align="center"> 
						标题</td>
					<td width="82%" align="left">  <input type=text   class='' id='title' name='title' size=35 /><label id='clabeltitle' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						内容</td>
					<td width="82%" align="left">  <textarea  cols='35'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='ncontent'  ></textarea></td>
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
  
<script language=javascripmassorganizajsxxglxt/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascrimassorganizanjsxxglxt/js/popup.js'></script>
<script language=javascrmassorganiza/njsxxglxt/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
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
if(parent.document.getElementsByTagName("iframe").length>0){
var alliframe = parent.document.getElementsByTagName("iframe")[0]; 
alliframe.style.height=document.body.scrollHeight+4; 
} 
</script>  

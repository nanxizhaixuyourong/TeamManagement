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
    </head>
      
       
<% 
new CommDAO().delete(request,"datadic"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"datadic",ext,true,true); 
HashMap mmm = new CommDAO().getmap(id,"datadic"); 
%>
<body  >
		
            
            
            
      
	<form name="f1" method="post"    action="bjdatadicxg.jsp?f=f&id=<%=mmm.get("id")%>"   onSubmit="return checkform()" >

<table width="99%" border="0" align="center" cellpadding="0"
				cellspacing="0" class="mytab" id="table1">
				<tr align="center">
					<td colspan="2"  background="/massorganiza/commfiles/images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"> 
						信息修改</td>
				</tr>
				 
				
				<tr align="center">
					<td width="18%" align="center" height="28">班级</td>
					<td width="82%" align="left"><input type=text  onblur='checkform()'  class='' id='dvalue' name='dvalue' size=35 /><label id='clabeldvalue' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center" height="28">院系</td>
					<td width="82%" align="left"><%=Info.getselect("ptype","datadic","dvalue~无名","dtype='院系'")%><label id='clabelptype' />
</td>
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
var dvalueobj = document.getElementById("dvalue");  
if(dvalueobj.value==""){  
document.getElementById("clabeldvalue").innerHTML="&nbsp;&nbsp;<font color=red>请输入班级</font>";  
return false;  
}else{ 
document.getElementById("clabeldvalue").innerHTML="  ";  
}  
var dvalueobj = document.getElementById("dvalue");  
if(dvalueobj.value!=""){  
var ajax = new AJAX(); 
ajax.post("/massorganiza/factory/checkno.jsp?table=datadic&col=dvalue&value="+dvalueobj.value+"&checktype=update&id=<%=mmm.get("id")%>&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
if(msg.indexOf('Y')>-1){ 
document.getElementById("clabeldvalue").innerHTML="&nbsp;&nbsp;<font color=red>班级已存在</font>";  
return false; 
}else{ 
document.getElementById("clabeldvalue").innerHTML="  ";  
}  
}  
var ptypeobj = document.getElementById("ptype");  
if(ptypeobj.value==""){  
document.getElementById("clabelptype").innerHTML="&nbsp;&nbsp;<font color=red>请输入院系</font>";  
return false;  
}else{ 
document.getElementById("clabelptype").innerHTML="  ";  
}  
return true;   
}   
var frames = parent.document.getElementsByTagName("iframe");
for(var i=0;i<frames.length;i++){ 
var alliframe = parent.document.getElementsByTagName("iframe")[i];  
if(alliframe.name=="ifr_popup0")
alliframe.style.height=document.body.scrollHeight+3; 
} 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 

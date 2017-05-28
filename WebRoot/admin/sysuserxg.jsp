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
new CommDAO().delete(request,"sysuser"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
ext.put("utype","教师"); 
new CommDAO().update(request,response,"sysuser",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"sysuser"); 
%>
<body 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMmassorganiza/njsxxglxt/commfiles/bg.gif); BACKGROUND-REPEAT: repeat-x;overflow: scroll;">
		
            
            
            
      
	<form name="f1" method="post"   action="sysuserxg.jsp?f=f&id=<%=mmm.get("id")%>"  onSubmit="return checkform()" >


<table>
<tr><td height="10"> </td></tr>
</table>

<DIV>
  <TABLE height="96%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMmassorganiza/njsxxglxt/commfiles/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMmassorganiza/njsxxglxt/commfiles/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="FLOAT: left; BACKGROUND-IMmassorganiza/njsxxglxt/commfiles/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMmassorganiza/njsxxglxt/commfiles/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">修改管理员信息 </SPAN><SPAN 
      style="FLOAT: left; BACKGROUND-IMmassorganiza/njsxxglxt/commfiles/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD 
    style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMmassorganiza/njsxxglxt/commfiles/main_rc.gif)" 
    width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMmassorganiza/njsxxglxt/commfiles/main_ls.gif)">&nbsp;</TD>
        <TD 
    style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; COLOR: #566984; PADDING-TOP: 5px; BACKGROUND-COLOR: white" 
    vAlign=top align=middle>
          <DIV>
            
            
            
            
            
            
            
			<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0" class="mytab" id="table1">
				<tr align="center">
					<td colspan="2" bacmassorganiza/njsxxglxt/commfiles/images/bg.gif"
						bgcolor="#FFFFFF" class="STYLE3"> 
						修改管理员信息</td>
				</tr>
				 
				
				<tr align="center">
					<td width="18%" align="center"> 
						用户名</td>
					<td width="82%" align="left">&nbsp;<input type=text  class='' id='uname' name='uname' size=35 /><label id='clabeluname' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						姓名</td>
					<td width="82%" align="left">&nbsp;<input type=text  class='' id='tname' name='tname' size=35 /><label id='clabeltname' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						性别</td>
					<td width="82%" align="left">&nbsp;<span id="sexdanx"><label><input type=radio name='sex' value='男' />&nbsp;男 </label>
<label><input type=radio name='sex' value='女' />&nbsp;女 </label>
</span></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						生日</td>
					<td width="82%" align="left">&nbsp;<input type=text size='12'   class=''   name='age' onclick='WdatePicker();'  /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						联系电话</td>
					<td width="82%" align="left">&nbsp;<input type=text  class='' id='tel' name='tel' size=35 /><label id='clabeltel' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						联系地址</td>
					<td width="82%" align="left">&nbsp;<input type=text  class='' id='addrs' name='addrs' size=35 /><label id='clabeladdrs' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						联系QQ</td>
					<td width="82%" align="left">&nbsp;<input type=text  class='' id='qq' name='qq' size=35 /><label id='clabelqq' /></td>
				</tr>
<tr align="center">
					<td width="18%" align="center"> 
						相片</td>
					<td width="82%" align="left">&nbsp;<%=Info.getImgUpInfo(65)%></td>
				</tr>

				
				


				<tr align="center">
					<td height="30" colspan="2" align="center">
						<label>
							<input type="submit" name="button" id="button" value="提交信息">
						</label>
						&nbsp;&nbsp;
				  <input type=button value='返回上页' onclick='window.location.replace("sysusercx.jsp")' />					</td>
				</tr>
			</table>
            
            
            
        
        </DIV>
        </TD>
        <TD style="BACmassorganizaMAGE: url(/njsxxglxt/commfiles/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACmassorganizaMAGE: url(/njsxxglxt/commfiles/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACmassorganizaMAGE: url(/njsxxglxt/commfiles/main_lf.gif)"></TD>
        <TD style="BACmassorganizaMAGE: url(/njsxxglxt/commfiles/main_fs.gif)"></TD>
        <TD 
style="BACmassorganizaMAGE: url(/njsxxglxt/commfiles/main_rf.gif)"></TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>

      
            
		</form>
	</body>
</html>
 <script languamassorganizaript src='/njsxxglxt/js/My97DatePicker/WdatePicker.js'></script> 
<script langumassorganizacript src='/njsxxglxt/js/ajax.js'></script> 
<script langmassorganizascript src='/njsxxglxt/js/popup.js'></script> 
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
var unameobj = document.getElementById("uname");  
if(unameobj.value==""){  
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{ 
document.getElementById("clabeluname").innerHTML="  ";  
}  
var unameobj = document.getElementById("uname");  
if(unameobj.value!="massorganizar ajax = new AJAX(); 
ajax.post("/njsxxglxt/factory/checkno.jsp?table=sysuser&col=uname&value="+unameobj.value+"&checktype=update&id=<%=mmm.get("id")%>&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
if(msg.indexOf('Y')>-1){ 
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false; 
}else{ 
document.getElementById("clabeluname").innerHTML="  ";  
}  
}  
var tnameobj = document.getElementById("tname");  
if(tnameobj.value==""){  
document.getElementById("clabeltname").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{ 
document.getElementById("clabeltname").innerHTML="  ";  
}  
var telobj = document.getElementById("tel");  
if(telobj.value!=""){  
if(telobj.value.length>11||telobj.value.length<8||isNaN(telobj.value)){ 
document.getElementById("clabeltel").innerHTML="&nbsp;&nbsp;<font color=red>联系电话必须为8-11位数字</font>";  
return false;
}else{  
document.getElementById("clabeltel").innerHTML="";  
}  
}  
var qqobj = document.getElementById("qq");  
if(qqobj.value!=""){  
if(qqobj.value.length>12||isNaN(qqobj.value)){ 
document.getElementById("clabelqq").innerHTML="&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabelqq").innerHTML="";  
}  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 

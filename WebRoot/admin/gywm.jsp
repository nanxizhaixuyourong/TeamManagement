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
new CommDAO().delete(request,"mixinfo"); 
String id = "1"; 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"mixinfo",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"mixinfo"); 
%>
<body 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg.gif); BACKGROUND-REPEAT: repeat-x;overflow: scroll;">
		
            
            
            
      
	<form name="f1" method="post"   action="gywm.jsp?f=f&id=<%=mmm.get("id")%>"  onSubmit="return checkform()" >


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
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">关于我们 </SPAN><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
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
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0" class="mytab" id="table1">
				<tr align="center">
					<td colspan="2" background="/massorganiza/commfiles/images/bg.gif"
						bgcolor="#FFFFFF" class="STYLE3"> 
						关于我们</td>
				</tr>
				 
				
				 
<tr align="center">
					 
					<td width="82%" align="left"> <%=Info.fck(265,mmm.get("content").toString())%></td>
				</tr>

				
				


				<tr align="center">
					<td height="30" colspan="2" align="center">
						<label>
							<input type="submit" name="button" id="button" value="提交信息">
						</label>
						&nbsp;&nbsp;
				  <input type=button value='返回上页' onclick='popclose();' />					</td>
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
 
</script>  
<%=Info.tform(mmm)%> 

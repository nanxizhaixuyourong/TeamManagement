<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta name="google-site-verification" content="AaXcm9iBgUCuay76BuRaFbO9p7R4_8no3Q2UKznci-c" /><title>
	
        
       学院社团管理系统
    
</title>    <link href="/massorganiza/frontfiles/css/2009.css" rel="stylesheet" type="text/css" /><link href="css/home.css" rel="stylesheet" type="text/css" />
 
 
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
 
 
<!-- Copyright ? 2005. Spidersoft Ltd -->
<style> 
A.applink:hover {border: 2px dotted #DCE6F4;padding:2px;background-color:#ffff00;color:green;text-decoration:none}
A.applink       {border: 2px dotted #DCE6F4;padding:2px;color:#2F5BFF;background:transparent;text-decoration:none}
A.info          {color:#2F5BFF;background:transparent;text-decoration:none}
A.info:hover    {color:green;background:transparent;text-decoration:underline}
</style>
 
 <td valign="top">
                    <table id="Table2" border="0" cellpadding="0" cellspacing="0"   width="274">
                        <tr>
                            <td>
                                <table id="__01" border="0" cellpadding="0" cellspacing="0"  width="274">
                                    <tr>
                                        <td background="/massorganiza/frontfiles/images/index_02_01_01_01.jpg" class="i-006" height="35" width="274">
                                            .
                                            最新网站公告
                                            
                                            <%
                                            List<HashMap>  nlist = new CommDAO().select("select * from notices order by id desc",1,1);
                                             %>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td background="/massorganiza/frontfiles/images/index_02_01_01_02.jpg"  valign="top" width="274">
                                            <table width="100%"  border="0" cellpadding="0" cellspacing="0">
<tr>
                                                    <td width="6%"  >&nbsp;
                                                        </td>
                                                    <td width="89%" valign="top">
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        <%
                                                        for(HashMap m:nlist){
                                                         %>
                                                        <table id="" cellspacing="0" border="0" style="width:100%;border-collapse:collapse;">
	<tr>
		<td>
		<table><tr><td height="5"></td></tr></table>
        <table border="0" cellspacing="0" cellpadding="0" width="100%">
            <tr width="100%">
                <td height="20"  width="100%">
                    <a href='#'><font color="#FF6600"><strong>
                        <%=m.get("title") %>
                    </strong></font></a>                </td>
            </tr>
            <tr width="100%" valign="top">
                <td class="" width="100%">
                    <table id="ctl00_ContentPlaceHolder1_Rmbq1_DataList_px_ctl00_Repeater_kc" cellspacing="0" border="0"  >
			<tr>
				<td >
                       <%= Info.subStr(m.get("ncontent").toString(),200)  %>     
                                
                        </td>
			</tr> 
		</table>            
		
		<table><tr><td height="5"></td></tr></table>
		
		    </td>
            </tr>
        </table>    </td>
	</tr>
</table>
                                                        
                                                        
                                                        
                        <%} %>                                
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                  </td>
                                                    <td width="5%">&nbsp;
                                                        </td>
                                                </tr>
                                            </table>
                                      </td>
                                    </tr>
                                    <tr>
                                        <td align="right" background="/massorganiza/frontfiles/images/index_02_01_01_03.jpg" height="31" width="274">
                                            
                                                 </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
 
    <table id="Table1" border="0" cellpadding="0" cellspacing="0" height="" width="274">
 
        <tr>
            <td background="/massorganiza/frontfiles/images/index_02_01_02_01.jpg" class="i-006" height="36" width="274">
                .最新留言</td>
        </tr>
        <tr>
            <td background="/massorganiza/frontfiles/images/index_02_01_01_02.jpg" height="" width="274">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td height="" width="6%"> 
                            </td>
                        <td valign="top" width="89%">
                         
                                    
                                          
                                          
                                          
                                          <%
                                          for(HashMap map:new CommDAO().select("select * from messages order by id desc",1,6)){
                                           %>
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr><td height="5"></td></tr>
                                            
                                                <tr>
                                                    <td align="center" class="TDbottom" height="23" width="13px">
                                                        ·</td>
                                                    <td class="TDbottom">
                                                          
                                                           <%=map.get("saver") %> : <%=Info.subStr(map.get("mcontent").toString(),13)  %>
                                                         
                                                    </td>
                                                </tr>
                                            </table>
                                        <%} %>
                                            
                                            
                                            
                                            
                            
                        </td>
                        <td width="5%"> 
                            </td>
                    </tr>
                      <tr><td height="5"></td></tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" background="/massorganiza/frontfiles/images/index_02_01_02_03.jpg" height="30" width="274">&nbsp;&nbsp;</td>
        </tr>
    </table>
 
 
                            </td>
                        </tr>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        <tr>
                            <td>
                                
<div class="blank">
    <table id="Table1" border="0" cellpadding="0" cellspacing="0" height="" width="274">
 
        <tr>
            <td background="/massorganiza/frontfiles/images/index_02_01_02_01.jpg" class="i-006" height="36" width="274">
                .关于我们</td>
        </tr>
        <tr>
            <td background="/massorganiza/frontfiles/images/index_02_01_01_02.jpg" height="" width="274">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td height="" valign="top">                            
                         
                                    
                                            <table width="93%" border="0" align="right" cellpadding="0" cellspacing="0">
                                                
                            <tr><td height="10"></td></tr>
                                                
                                                <tr>
                                                    <td width="240" height="23" align="left" class="">
                                                        

<%
String con = new CommDAO().getmap("1","mixinfo").get("content").toString();
out.print(Info.subStr(con,220) );
 %>                                                        </td>
                                              </tr>
                                              <tr><td height="5"></td></tr>
                        </table></td>
                        
                        
                        
                        
                        
                        
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" background="/massorganiza/frontfiles/images/index_02_01_02_03.jpg" height="30" width="274">&nbsp;&nbsp;</td>
        </tr>
    </table>
</div>
 
                            </td>
                        </tr>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    </table>
                </td>
</body>
</html>
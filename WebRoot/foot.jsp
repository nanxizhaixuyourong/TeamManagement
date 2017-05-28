<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta name="google-site-verification" content="AaXcm9iBgUCuay76BuRaFbO9p7R4_8no3Q2UKznci-c" /><title>
	
        
        学院社团管理系统
    
</title>
<link href="/massorganiza/frontfiles/css/2009.css" rel="stylesheet" type="text/css" /><link href="css/home.css" rel="stylesheet" type="text/css" />
 
 
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
 
 
<!-- Copyright ? 2005. Spidersoft Ltd -->
<style> 
A.applink:hover {border: 2px dotted #DCE6F4;padding:2px;background-color:#ffff00;color:green;text-decoration:none}
A.applink       {border: 2px dotted #DCE6F4;padding:2px;color:#2F5BFF;background:transparent;text-decoration:none}
A.info          {color:#2F5BFF;background:transparent;text-decoration:none}
A.info:hover    {color:green;background:transparent;text-decoration:underline}
</style>
 
  
        <div align="center">
          <div class="blank" style="display:inline"></div>
          <table id="ctl00_Table4" width="1003" height="164" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td>
                        <table id="Table5" width="1003" height="37" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <img src="/massorganiza/frontfiles/images/index_10_01_01_01.jpg" width="12" height="37" alt=""></td>
                                <td width="980" height="37" background="/massorganiza/frontfiles/images/index_10_01_01_02.jpg" class="i-002">
                                    友情链接</td>
                                <td>
                                    <img src="/massorganiza/frontfiles/images/index_10_01_01_03.jpg" width="11" height="37" alt=""></td>
                            </tr>
                        </table>
                    </td>
	</tr>
	<tr>
		<td width="1003" background="/massorganiza/frontfiles/images/index_10_01_02.jpg">
                        <div id="ctl00_Panel1" style="width:100%;">
			
                            <table width="1003" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="15" height="95">&nbsp;
                                        </td>
                                    <td width="974" valign="top">
                                        <table id="ctl00_DL_lb1" cellspacing="0" border="0" style="border-collapse:collapse;">
				
				<tr><td height="12"></td></tr>
				
				<tr>
					
                    
                    
                    
                    
                    
                    
                    <%
                    int i=0;
                    for(HashMap map:new CommDAO().select("select * from yqlj order by id desc")){
                     %>
                    <td>
                      <table width="121" border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td align="center">
                                                              <a href='<%=map.get("ljurl") %>'>
                                                                <%=map.get("ljname") %>
                                                            </a>                                                        </td>
                        </tr>
                    </table>                                            </td> 
                         <%
                         i++;
                         
                         
                         if(i%8==0)out.println("</tr><tr><td height='10'></td></tr><tr>");
                         
                         } %>                       
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
				</tr>
			</table>
                              <td width="14">&nbsp;
                                        </td>
                                </tr>
                            </table>
                        
		</div>
                        
                    </td>
	</tr>
	<tr>
		<td>
                        <table id="Table6" width="1003" height="32" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <img src="/massorganiza/frontfiles/images/index_10_01_03_01.jpg" width="13" height="32" alt=""></td>
                                <td width="898" height="32" background="/massorganiza/frontfiles/images/index_10_01_03_02.jpg">&nbsp;
                                    </td>
                                <td width="77" height="32" align="center" background="/massorganiza/frontfiles/images/index_10_01_03_02.jpg">
                                </td>
                                <td>
                                    <img src="/massorganiza/frontfiles/images/index_10_01_03_04.jpg" width="15" height="32" alt=""></td>
                            </tr>
                        </table>
                    </td>
	</tr>
</table>
 
            <table width="1003" height="123" border="0" align="center" cellpadding="0" cellspacing="0"
                id="Table7">
              
                <tr>
                    <td width="1003" height="90" bgcolor="#FFFFFF">
                        <table width="1003" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="187" height="90">&nbsp;
                                    </td>
                                <td width="639" align="center" class="ggg">
                                    本模板可供学习研究所有，欢迎下载使用
                                    <br>
                                    客服：<span id="ctl00_Lb_dh">400-99999999</span> &nbsp; 邮箱：<span id="ctl00_Lb_email">zh-abcdef@abcdef.com</span>&nbsp; QQ：<span id="ctl00_lb_QQ">课程123456789</span><br>
                                    津CCC备000000000000号</td>
                                <td width="177">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table border="0" align="center" cellpadding="0" cellspacing="0" width="1003">
                <tr>
                    <td bgcolor="#FFFFFF" align="center">
                        <div>
 
<!-- GOOGLE检测代码 end -->
                        </div>
                    </td>
                </tr>
            </table>
        </div>
     
</body>
</html>
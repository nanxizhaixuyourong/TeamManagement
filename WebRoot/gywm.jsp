<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta name="google-site-verification" content="AaXcm9iBgUCuay76BuRaFbO9p7R4_8no3Q2UKznci-c" /><title>
	
        
        学院社团管理系统
    
</title>      <link href="/massorganiza/frontfiles/css/2009.css" rel="stylesheet" type="text/css" /><link href="css/home.css" rel="stylesheet" type="text/css" />
 
 
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
            <jsp:include page="top.jsp"></jsp:include>
          <div class="blank" style="display:inline">
        <table id="Table9" align="center" border="0" cellpadding="0" cellspacing="0" 
            width="1003">
            <tr>
                <jsp:include page="left.jsp"></jsp:include>
                <td valign="top">
              <table id="Table8" border="0" cellpadding="0" cellspacing="0" height=" " width="100%">
<tr>
                            <td width="729">
                                <table id="Table5" border="0" cellpadding="0" cellspacing="0" height="329" width="100%">
                      <tr>
                                        <td>
                                            <table id="Table3" border="0" cellpadding="0" cellspacing="0" height="35" width="729">
                                                <tr>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_01_01.jpg" width="10">&nbsp;                                                        </td>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_01_02.jpg" class="i-002" height="35" width="709">
                                                        .
                                                        关于我们</td>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_01_03.jpg" width="10">                                                    </td>
                                                </tr>
                                            </table>                                        </td>
                                    </tr>
                                    <tr>
                                        <td background="/massorganiza/frontfiles/images/index_02_02_01_02.jpg" height="264" width="729">
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td height="264" width="2%">&nbsp;                                                        </td>
                                                    <td width="96%">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                            <tr>
                                                                <td width="100%" height="264" valign="top">
                                                                
                                                                
                                                                
                                                                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                <tr>
                                                                                    <td width="15%" height="15" align="center" class="TDbottom">
                                                                                  </td>
                                                                                </tr>
                                                                  </table>
                                                                    
                                                                            
                                                                            
                                                                  <%
                                                                            
                                                                     String id = "1";
                                                                     HashMap map = new CommDAO().getmap(id,"mixinfo");
                                                                             %>
                                                                            <table width="100%" height="84" border="0" cellpadding="0" cellspacing="0">
                                                 
                                                                              
                                                                              
                                                                              
                                                                              
                                                                                <tr>
                                                                                  <td height="53" class=" " valign="top">
                                                                                  
                                                                                  <font color=" " >
                                                                                  
                                                                                  <%= map.get("content").toString()  %>
                                                                                  
                                                                                  </font>
                                                                                  
                                                                                  </td>
                                                                              </tr>
                                                                            </table>
                                                                 
                                                                        
                                                             
                                                                        
                                                                                                                                   </td>
                                                            </tr>
                                                        </table>                                                  </td>
                                                    <td width="2%">&nbsp;                                                        </td>
                                                </tr>
                                            </table>                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table id="Table4" border="0" cellpadding="0" cellspacing="0" height="10" width="100%">
                                                <tr>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_03_01.jpg" width="12">&nbsp;                                                        </td>
                                                    <td align="right" background="/massorganiza/frontfiles/images/index_02_02_01_03_02.jpg" height="30" width="702">&nbsp;</td>
                                              <td background="/massorganiza/frontfiles/images/index_02_02_01_03_03.jpg" width="15">&nbsp;                                                        </td>
                                                </tr>
                                            </table>                                        </td>
                                    </tr>
                                </table>                            </td>
                        </tr>
                    </table>
              </td>
          </tr>
        </table>
        </div>
          <jsp:include page="foot.jsp"></jsp:include>
         
     
</body>
</html>
<%
if(request.getAttribute("error")!=null)
{
 %>
 <script type="text/javascript">
<!--
alert("用户名或密码错误");
//-->
</script>
<%}%>
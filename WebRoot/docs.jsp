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
                                                        学习资料</td>
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
                                                                                    <td width="15%" height="10" align="center" class="TDbottom">
                                                                                  </td>
                                                                                </tr>
                                                                  </table>
                                                                    
                                                                            
                                                                            
                                                                  <%
                                                                  
                                                                            HashMap emap = new HashMap();
                                                                            HashMap user = Info.getUser(request);
                                                                           String key = request.getParameter("key")==null?"":request.getParameter("key");
                                                                            ArrayList<HashMap> list = PageManager.getPages("docs.jsp",5, "select * from docs where title like'%"+key+"%' order by id ", request ); 
                                                                             
                                                                            for(HashMap map:list)
                                                                            {
                                                                             %>
                                                                            <table width="100%" height="84" border="0" cellpadding="0" cellspacing="0">
                                                  <tr>
                                                                           
                                                                                    <td width="85%" height="27" class="">
                                                                                    
                                                                                     <%= map.get("title")    %>&nbsp;&nbsp;&nbsp;
                                                                                     
                                                                                      
                                                                                    
                                                                                        <span style="color:gray">  
                                                                                        <%=map.get("savetime") %>  </span></td>
                                                                              </tr>
                                                                                <tr>
                                                                                  <td height="53" class="TDbottom" valign="top"> 
                                                                                  <font color="gray" >
                                                                                  
                                                                                 
                                                                                  
                                                                                  <font color=gray> <%=map.get("jj")  %></font>
                                                                                  
                                                                               
                                                                                  
                                                                                  
                                                                                  <font color=orange> 
                                                                                  
                                                                                 <table><tr><td></td></tr></table>
                                                                                  <%
                                                                                  if(!map.get("docname").equals("")){
                                                                                   %>
                                                                                  相关文件下载 : <a href="/massorganiza/upload?filename=<%=map.get("docname") %>"><%=map.get("docname") %></a>
                                                                                  
                                                                                  <table><tr><td></td></tr></table>
                                                                                  <%} %>
                                                                                  </font>
                                                                                  
                                                                                  
                                                                                  
                                                                                  </td>
                                                                              </tr>
                                                                            </table>
                                        <%} %>                               
                                                                        
                                                                        
                                                                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                <tr>
                                                                                    <td width="5%" height="35" align="center"  >
                                                                                       
                                                                                       ${page.info }
                                                                                       
                                                                                       </td>
                                                                                </tr>
                                                                            </table>
                                                                        
                                                                                                                                  
                                                                                  <table><tr><td height="5"></td></tr></table>                                                
                                                                                                                       
                                                                  <table><tr><td height="5"></td></tr></table>                                            
                                                                                                                                  
                                                                                                                                  
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
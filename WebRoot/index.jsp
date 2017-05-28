<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta name="google-site-verification" content="AaXcm9iBgUCuay76BuRaFbO9p7R4_8no3Q2UKznci-c" /><title>
	
        
        学院社团管理系统
    
</title>      <link href="/massorganiza/frontfiles/css/2009.css" rel="stylesheet" type="text/css" /><link href="css/home.css" rel="stylesheet" type="text/css" />
 <%
 if(request.getParameter("zx")!=null)session.invalidate();
  %>
 
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
              <table id="Table8" border="0" cellpadding="0" cellspacing="0" height=" " width="729">
                        <tr>
                            <td>
                                <table id="Table5" border="0" cellpadding="0" cellspacing="0" height="329" width="729">
                                    <tr>
                                        <td>
                                            <table id="Table3" border="0" cellpadding="0" cellspacing="0" height="35" width="729">
                                                <tr>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_01_01.jpg" width="10">&nbsp;
                                                        </td>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_01_02.jpg" class="i-002" height="35" width="709">
                                                        .
                                                        社团活动</td>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_01_03.jpg" width="10">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td background="/massorganiza/frontfiles/images/index_02_02_01_02.jpg" height="264" width="729">
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td height="264" width="2%">&nbsp;
                                                        </td>
                                                    <td width="96%">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="700">
                                                            <tr>
                                                                <td align="center" height="264" width="331">
 
                                                                   <%=new CommDAO().DynamicImage("1",10,310,230) %>
 
                                                                </td>
                                                                <td valign="top" width="369">
                                                                    
                                                                            
                                                                            
                                                                            <%
                                                                            for(HashMap map:new CommDAO().select("select * from ninfos order by id desc",1,10)){
                                                                             %>
                                                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                <tr>
                                                                                    <td width="5%" height="25" align="center" class="TDbottom">
                                                                                        ·</td>
                                                                                    <td width="95%" class="TDbottom">
                                                                                    
                                                                                    <a href='nxiang.jsp?id=<%=map.get("id")%>'><%=Info.subStr(map.get("title").toString(),18) %></a>
                                                                                    &nbsp;&nbsp;
                                                                                        <span class="i-004">  
                                                                                        
                                                                                        [<%=map.get("mass") %>]
                                                                                        
                                                                                            [<%=map.get("savetime").toString().substring(0,10) %>] </span></td>
                                                                                </tr>
                                                                            </table>
                                                                        <%} %>
                                                                            
                                                                        
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="2%">&nbsp;
                                                        </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table id="Table4" border="0" cellpadding="0" cellspacing="0" height="30" width="729">
                                                <tr>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_03_01.jpg" width="12">&nbsp;
                                                        </td>
                                                    <td align="right" background="/massorganiza/frontfiles/images/index_02_02_01_03_02.jpg" height="30" width="702">
                                                        <a href="nmore.jsp">
                                                            <img height="10" src="/massorganiza/frontfiles/images/more.jpg" width="65" /></a></td>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_01_03_03.jpg" width="15">&nbsp;
                                                        </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="729" bgcolor="#FFFFFF">
                                <table width="720" height="25" border="0" align="center" cellpadding="0" cellspacing="0"
                                    bgcolor="#ADC0D1">
                                    <tr>
                                        <td width="720" height="36"  align="center" bgcolor="#FFFFFF">信息搜索 &nbsp;:&nbsp;
                                          <label>
<input type="radio" name="radio" id="aa" value="学习资料" checked="checked">
学习资料</label>
 <label><input type="radio" name="radio" id="bb" value="通知通告">
通知通告</label>
 <label><input type="radio" name="radio" id="cc" value="社团活动">
社团活动</label>
&nbsp;&nbsp;&nbsp;&nbsp;
<form action="" method="post" name="f2" style="display: inline">
<input name="key" type="text" id="key" size="18">
&nbsp;
<input type="button" name="button3" onclick="search()" id="button3" value="查询">
</form>
 
                                        <script type="text/javascript">
                                        function search()
                                        {
                                        var aa = document.getElementById("aa");
                                        var bb = document.getElementById("bb");
                                        var cc = document.getElementById("cc");
                                        if(aa.checked)
                                        {
                                        f2.action="docs.jsp";
                                        f2.submit();
                                        }
                                        if(bb.checked)
                                        {
                                        f2.action="tmore.jsp";
                                        f2.submit();
                                        }
                                        if(cc.checked)
                                        {
                                        f2.action="nmore.jsp";
                                        f2.submit();
                                        }
                                        }
                                        </script>
                                        
                                        
                                          </td>
                                    </tr>
                                </table>
                          </td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" height="" width="729">
                                <table border="0" cellpadding="0" cellspacing="0" width="729">
                                    <tr>
                                        <td align="center" height="" valign="top" width="364">
                                            <table id="Table6" border="0" cellpadding="0" cellspacing="0" height="367" width="364">
<tr>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_03_01.jpg" class="i-006" height="36" width="364">
                                                        .
                                                        最新社团信息</td>
                                                </tr>
                                                <tr>
                                                    <td width="364" height="100%" valign="top" background="/massorganiza/frontfiles/images/index_02_02_03_02.jpg">
                                                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                            <tr>
                                                                <td height="" width="4%">&nbsp;
                                                                    </td>
                                                                <td valign="top" width="93%" >
                                                                    
                                                                            
                                                                            
                                                                            <%
                                                                            for(HashMap m:new CommDAO().select("select * from mass order by id desc",1,12)){
                                                                             %>
                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                <tr>
                                                                                    <td align="center" class="TDbottom" height="25" width="5%">
                                                                                        ·</td>
                                                                                    <td class="TDbottom" width="75%">
                                                                                        <a href='/massorganiza/stxiang.jsp?id=<%=m.get("id")%>'>
                                                                                        <%=Info.subStr(m.get("ptitle").toString(),18)  %>
                                                                                        
                                                                                        </a></td>
                                                                                    <td class="TDbottom" width="20%">
                                                                                        <%=m.get("cldate").toString().substring(0,10) %>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                    <%} %>
                                                                            
                                                                             
                                                                            </td>
                                                                <td width="3%">&nbsp;
                                                                    </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                              </tr>
                                                <tr>
                                                    <td align="right" background="/massorganiza/frontfiles/images/index_02_02_03_03.jpg" height="30" width="364">&nbsp;&nbsp;</td>
                                              </tr>
                                            </table>
                                      </td>
                                        <td align="center" valign="top" width="365">
                                            <table id="Table7" border="0" cellpadding="0" cellspacing="0" height="370" width="364">
<tr>
                                                    <td background="/massorganiza/frontfiles/images/index_02_02_03_01.jpg" class="i-006" height="36" width="364">
                                                        .
                                                        最新帖子</td>
                                                </tr>
                                                <tr>
                                                    <td width="364" height="" valign="top" background="/massorganiza/frontfiles/images/index_02_02_03_02.jpg">
                                                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                            <tr>
                                                                <td height="" width="4%">&nbsp;
                                                                    </td>
                                                                <td valign="top" width="93%">
                                                                    
                                                                            
                                                                            
                                                                            
                                                                             <%
                                                                            for(HashMap m:new CommDAO().select("select * from  jlhd order by id desc",1,12)){
                                                                             %>
                                                                            <table border="0" cellpadding="0" cellspacing="0" width="339">
                                                                                <tr>
                                                                                    <td align="center" class="TDbottom" height="25" width="13">
                                                                                        ·</td>
                                                                                    <td class="TDbottom" width="230">
                                                                                       <a href='jlhdx.jsp?pid=<%=m.get("id")%>'>
                                                                                       
                                                                                       <%=Info.subStr(m.get("ttitle").toString(),18)  %>
                                                                                       
                                                                                       </a></td>
                                                                                    <td align="center" class="TDbottom i-007"><%=m.get("saver") %></td>
                                                                              </tr>
                                                                            </table>
                                                                  <%} %>
                                                                            
                                                                            
                                                                         
                                                                            
                                                                        
                                                                </td>
                                                                <td width="3%">&nbsp;
                                                                    </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                              </tr>
                                                <tr>
                                                    <td align="right" background="/massorganiza/frontfiles/images/index_02_02_03_03.jpg" height="33" width="364">
                                                        &nbsp; &nbsp;&nbsp;</td>
                                              </tr>
                                            </table>
                                      </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
          </tr>
        </table>
        </div>
          <jsp:include page="foot.jsp"></jsp:include>
          <table border="0" align="center" cellpadding="0" cellspacing="0" width="1003">
                <tr>
                    <td bgcolor="#FFFFFF" align="center">
                        <div>
                            <!-- JiaThis Button BEGIN -->
  
<!-- GOOGLE检测代码 end -->
                        </div>
                    </td>
                </tr>
            </table>
        </div>
     
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
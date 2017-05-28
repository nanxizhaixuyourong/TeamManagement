<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta name="google-site-verification" content="AaXcm9iBgUCuay76BuRaFbO9p7R4_8no3Q2UKznci-c" /><title>
	
         学院社团管理系统
    
</title><link href="/massorganiza/frontfiles/css/2009.css" rel="stylesheet" type="text/css" /><link href="css/home.css" rel="stylesheet" type="text/css" />
 
 
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
 
  <form action="/massorganiza/massorganiza?ac=flogin" style="display: inline" name="f2" method="post" >    
<!-- Copyright ? 2005. Spidersoft Ltd -->
<style> 
A.applink:hover {border: 2px dotted #DCE6F4;padding:2px;background-color:#ffff00;color:green;text-decoration:none}
A.applink       {border: 2px dotted #DCE6F4;padding:2px;color:#2F5BFF;background:transparent;text-decoration:none}
A.info          {color:#2F5BFF;background:transparent;text-decoration:none}
A.info:hover    {color:green;background:transparent;text-decoration:underline}
</style>
 
 
  <table width="1003" height="144" border="0" align="center" cellpadding="0" cellspacing="0"
                bgcolor="#FFFFFF" id="__01">
                <tr>
                    <td width="1003" height="30" background="/massorganiza/frontfiles/images/index_01_01.jpg">
                        <input type="hidden" name="ctl00$HiddenField1" id="ctl00_HiddenField1" value="我的培训班" />
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="75%">
                                    &nbsp;今天是： <span class="heise" id="liveclock"></span>
 
                                    <script language="javascript">
 
function timeprint()
{
 
var week; var date; 
var today=new Date()
var year=today.getYear()
var month=today.getMonth()+1
var day=today.getDate()
var ss=today.getDay()
var hours=today.getHours()
var minutes=today.getMinutes()
var seconds=today.getSeconds()
date=year+"年"+month+"月"+day+"日 "
if(ss==0) week="星期日"
if(ss==1) week="星期一"
if(ss==2) week="星期二"
if(ss==3) week="星期三"
if(ss==4) week="星期四"
if(ss==5) week="星期五"
if(ss==6) week="星期六"
if(minutes<=9)
minutes="0"+minutes
if(seconds<=9)
seconds="0"+seconds
myclock=date+week+" "+hours+":"+minutes+":"+seconds
if(document.layers){document.getElementById("liveclock").document.write(myclock)
ddocument.getElementById("liveclock").document.close()
}else if(document.all)
document.getElementById("liveclock").innerHTML=myclock
setTimeout("timeprint()",1000)
}
 
timeprint();
//-->
 
 
 
 
 
 
 
                                    </script>                                </td>
                                <td width="25%">
                                    <table id="Table1" width="236" height="23" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="89" height="23">&nbsp;                                            </td>
                                            <td>
                                                <a onClick="this.setHomePage('#');"
                                                    href="#">
                                                    <img src="/massorganiza/frontfiles/images/index_01_01_02.jpg" width="72" height="23" alt=""></a></td>
                                            <td>
                                                <a href="#" onClick="javascript:window.external.AddFavorite('http://www.mypxb.com','网站收藏');">
                                                    <img src="/massorganiza/frontfiles/images/index_01_01_03.jpg" width="75" height="23" alt="">                                                </a>                                            </td>
                                        </tr>
                                    </table>                                </td>
                            </tr>
                        </table>                    </td>
                </tr>
                <tr>
                    <td width="1003" height="74">
                        <table width="99%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="26%" align="center" onClick="window.location.replace('index.jsp')">
                                    <img id="ctl00_Image1" src="/massorganiza/frontfiles/logo/zh.gif" style="border-width: 0px;" width="182" height="46"/>                                </td>
                                <td width="100%">
                                    <table width="100%" height="78" border="0" align="right" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="35" align="right" bgcolor="#FFFFFF">
                                            
                                         <font color="#804000">   
                                            
                                     <%
                                     if(Info.getUser(request)==null){
                                      %>
                                      
                                            用户名&nbsp;:&nbsp;
                                              <label>
                                              <input name="username" type="text" id="username" size="8">
                                            
                                            &nbsp;密码&nbsp;:&nbsp;
                                        <input name="password" type="password" id="password" size="10">
                                        &nbsp;
                                        <input type="button" style="color: #804000" onclick="this.form.submit();" name="button" id="button" value="登录">
                                        &nbsp;
                                        <input type="button" style="color: #804000" onclick="this.form.action='regedit.jsp';this.form.submit();" name="button" id="button" value="注册">
                                        
                                        <!-- 
                                        &nbsp;
                                        <input type="button" name="button2" id="button2" value="注册">
                                          -->    
                                        <%}else{ 
                                        HashMap user = Info.getUser(request);
                                        %>  
                                        欢迎您回来 : <%=user.get("uname") %> [<%=user.get("utype") %>] 
                                        
                                        &nbsp;
                                     
                                     
                                     <a href="/massorganiza/admin/index.jsp" target="_blank"><font color="#804000">去<%=user.get("utype") %>信息中心</font></a>
                                       
                                       &nbsp;
                                       
                                       
                                       <a href="/massorganiza/index.jsp?zx=zx"  >  
                                     <font color="#804000"> 
                                    注销  
                                    </font>  
                                       </a>
                                       
                                       
                                       
                                        <%} %>
                                             
                                              </label>
                                              
                                              
                                              </font>
                                              </td>
                                      </tr>
                                        <tr>
                                          <td height="37" align="right" bgcolor="#FFFFFF">
                                          
                                          <marquee   scrollAmount="2">
                                            欢迎光临学院社团网站，本站能为您提供最新的社团及活动信息，有疑问请留言
                                          </marquee>                                          <label></label></td>
                                      </tr>
                              </table>                                </td>
                            </tr>
                  </table>                    </td>
                </tr>
                <tr width="1003">
                    <td>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                         
                            <table width="996" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="996" background="/massorganiza/frontfiles/images/index_01_03.jpg">
                                        <table id="Table2" width="996" height="31" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="63">&nbsp;                                                    </td>
                                                <td width="57" align="center" class="i-001" onMouseOver="javascript:this.background='/massorganiza/frontfiles/images/bh1.jpg'"
                                                    onmouseout="background=''"> 
                                                    <a href='index.jsp'  
                                                        id="mynav0"><strong>首页</a></td>
                                                <td align="center">
                                                    <img src="/massorganiza/frontfiles/images/index_01_03_03.jpg" width="6" height="31" alt=""></td>
                                                <td width="84" align="center" class="i-001" onMouseOver="javascript:this.background='/massorganiza/frontfiles/images/bh1.jpg'"
                                                    onmouseout="background=''">
                                                    <a href='wzjj.jsp' id="mynav1"  ><strong>学院简介</strong></a></td>
                                                
                                                <td align="center">
                                                    <img src="/massorganiza/frontfiles/images/index_01_03_11.jpg" width="5" height="31" alt=""></td>
                                                <td width="73" align="center" class="i-001" onMouseOver="javascript:this.background='/massorganiza/frontfiles/images/bh1.jpg'"
                                                    onmouseout="background=''">
                                                    <a href="tmore.jsp"   id="mynav5"><strong>通知通告</strong></a></td>
                                                <td align="center">
                                                    <img src="/massorganiza/frontfiles/images/index_01_03_13.jpg" width="4" height="31" alt=""></td>
                                                <td width="84" align="center" class="i-001" onMouseOver="javascript:this.background='/massorganiza/frontfiles/images/bh1.jpg'"
                                                    onmouseout="background=''">
                                                    <a href="nmore.jsp"   id="mynav6"><strong>社团活动</strong></a></td>
                                                <td align="center">
                                                    <img src="/massorganiza/frontfiles/images/index_01_03_15.jpg" width="4" height="31" alt=""></td>
                                                <td width="84" align="center" class="i-001" onMouseOver="javascript:this.background='/massorganiza/frontfiles/images/bh1.jpg'"
                                                    onmouseout="background=''">
                                                    <a href="jlhd.jsp"   id="mynav7"><strong>交流互动</strong></a></td>
                                                
                                                 <td align="center">
                                                    <img src="/massorganiza/frontfiles/images/index_01_03_17.jpg" width="5" height="31" alt=""></td>
                                                <td width="77" align="center" class="i-001" onMouseOver="javascript:this.background='/massorganiza/frontfiles/images/bh1.jpg'"
                                                    onmouseout="background=''">
                                                    <a id="mynav8"   href="gywm.jsp"><strong>关于我们</strong></a></td>
                                                
                                                <td align="center">
                                                    <img src="/massorganiza/frontfiles/images/index_01_03_17.jpg" width="5" height="31" alt=""></td>
                                                <td width="77" align="center" class="i-001" onMouseOver="javascript:this.background='/massorganiza/frontfiles/images/bh1.jpg'"
                                                    onmouseout="background=''">
                                                    <a id="mynav8"   href="messages.jsp"><strong>留言板</strong></a></td>
                                                    
                                                    
                                                   
                                                    
                                                    
                                                <td width="43">&nbsp;</td>
                                            </tr>
                                        </table>                                    </td>
                                </tr>
                            </table>
                     
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                                            </td>
                </tr>
            </table>
            </form>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta name="google-site-verification" content="AaXcm9iBgUCuay76BuRaFbO9p7R4_8no3Q2UKznci-c" /><title>
	
         
    
</title>      <link href="/massorganiza/frontfiles/css/2009.css" rel="stylesheet" type="text/css" /><link href="css/home.css" rel="stylesheet" type="text/css" />
 
 
</head>
<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("utype","会员"); 
ext.put("stauts","待审核"); 
new CommDAO().insert(request,response,"sysuser",ext,true,false); 
%>
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
                                                        用户注册                                                        </td>
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
                                                                                    <td width="15%" height="1" align="center"  >
                                                                                  </td>
                                                                                </tr>
                                                                  </table>
                                                                    
                                                                            
                                                                            
                                                                <form  action="regedit.jsp?f=f&tglparentid=<%=tglparentid%>"  method="post" name="f1" onSubmit="return checkform()" >
                                                                            <table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">
                                                  <tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">用户名</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><input type=text  onblur='checkform()' class='' id='uname' name='uname' size=35 /><label id='clabeluname' />  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">密码</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><input type=text  onblur='checkform()' class='' id='upass' name='upass' size=35 /><label id='clabelupass' />  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">姓名</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><input type=text  onblur='checkform()' class='' id='tname' name='tname' size=35 /><label id='clabeltname' />  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">性别</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><span id="sexdanx"><label><input type=radio checked=checked name='sex' id='sex' value='男' />&nbsp;男 </label>
<label><input type=radio  name='sex' id='sex' value='女' />&nbsp;女 </label>
</span>  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">年龄</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><input type=text  onblur='checkform()' class='' id='age' name='age' size=35 /><label id='clabelage' />  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">联系电话</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><input type=text  onblur='checkform()' class='' id='tel' name='tel' size=35 /><label id='clabeltel' />  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">联系地址</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><textarea  cols='35'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='addrs'  ></textarea>  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">联系QQ</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><input type=text  onblur='checkform()' class='' id='qq' name='qq' size=35 /><label id='clabelqq' />  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">院系</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><%=Info.getselect("yx","datadic","dvalue~无名","dtype='院系'")%> 
<label id='clabelyx' />
  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">班级</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><%=Info.getselect("bclass","datadic","dvalue~无名","dtype='班级'")%> 
<script language=javascript> 
function yxchange(){ 
document.getElementById("yx").onchange=yxchange; 
var yxvalue = document.getElementById("yx").value; 
var bclassobj = document.getElementById("bclass"); 
bclassobj.options.length=0; 
var boption = new Option("不限",""); 
bclassobj.add(boption); 
var ajax = new AJAX(); 
ajax.post("/massorganiza/factory/getsonops.jsp?glb=datadic&glzd=dvalue~无名&jlzd=yx&jlzdb=ptype&value="+yxvalue+"&ctype=select&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
var msgs = msg.split("@@@"); 
for(var i=1;i<msgs.length;i++){ 
if(msgs[i]!=""){ 
var option = new Option(msgs[i],msgs[i]); 
bclassobj.add(option); 
} 
} 
} 
</script> 
<label id='clabelbclass' />
  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">所属社团</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><%=Info.getselect("st","mass","ptitle~无名"," 1=1 ")%> 
<label id='clabelst' />
  </td>
                                                                              </tr>
<tr>
                                                                                    <td width="21%" height="37" align="center" class="TDbottom">相片</td>
                                                                                    <td width="79%" height="37"  class="TDbottom"><%=Info.getImgUpInfo(65)%>  </td>
                                                                              </tr>

                                                                              
                                                                              
                                                                              <tr>
                                                                                    <td height="37" colspan="2" align="center" class="TDbottom"><label>
                                                                                      <input type="submit" name="button" id="button" value="提交信息">
                                                                                      &nbsp;&nbsp;&nbsp;
                                                                                      <input type="reset" name="button2" id="button2" value="重新填写">
                                                                                    </label></td>
                                                                              </tr>
                                                                            </table>
                                                                </form>
                                                                        
                                                                        
                                                                       
                                                                        
                                                                                                        
                                                                                                                                  
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
<%}%><script language=javascript src='/massorganiza/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/massorganiza/js/popup.js'></script>
<script language=javascript src='/massorganiza/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
yxchange(); 
 
 function checkform(){  
var unameobj = document.getElementById("uname");  
if(unameobj.value==""){  
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{
document.getElementById("clabeluname").innerHTML="  ";  
}  
  
var unameobj = document.getElementById("uname");  
if(unameobj.value!=""){  
var ajax = new AJAX();
ajax.post("/massorganiza/factory/checkno.jsp?table=sysuser&col=uname&value="+unameobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false;
}else{document.getElementById("clabeluname").innerHTML="  ";  
}  
}  
var upassobj = document.getElementById("upass");  
if(upassobj.value==""){  
document.getElementById("clabelupass").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{
document.getElementById("clabelupass").innerHTML="  ";  
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
var yxobj = document.getElementById("yx");  
if(yxobj.value==""){  
document.getElementById("clabelyx").innerHTML="&nbsp;&nbsp;<font color=red>请输入院系</font>";  
return false;  
}else{
document.getElementById("clabelyx").innerHTML="  ";  
}  
  
var bclassobj = document.getElementById("bclass");  
if(bclassobj.value==""){  
document.getElementById("clabelbclass").innerHTML="&nbsp;&nbsp;<font color=red>请输入班级</font>";  
return false;  
}else{
document.getElementById("clabelbclass").innerHTML="  ";  
}  
  
var stobj = document.getElementById("st");  
if(stobj.value==""){  
document.getElementById("clabelst").innerHTML="&nbsp;&nbsp;<font color=red>请输入所属社团</font>";  
return false;  
}else{
document.getElementById("clabelst").innerHTML="  ";  
}  
  
return true;   
}   
popheight=360;
</script>  

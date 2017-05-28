<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
  <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/massorganiza/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/massorganiza/commfiles/css/style.css" /> 
	<script type="text/javascript" src="/massorganiza/commfiles/js/popup.js"></script>
  </head>
   
 <BODY 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(/massorganiza/commfiles/bg.gif); BACKGROUND-REPEAT: repeat-x">
	<form name="f1" method="post"  action="zxdt.jsp?t=t&f=f" target="totali"  >
  
<input type="hidden" name="ftotal" id="ftotal" />

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
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">在线答题</SPAN><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(/massorganiza/commfiles/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><br></TD>
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
  
  	 
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="12"  background="/massorganiza/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">在线考试</td>
        </tr>
        <tr align="center" style="display: none">
          <td  class="itemtitle" >标题</td> 
         </tr>
        
      
        <% 
 String t = request.getParameter("t")==null?"":request.getParameter("t");
 
 if(!t.equals(""))
 {
 String ids = request.getParameter("ids");
 String answers = "";
 for(String str:ids.split("-"))
 {
 String stname = new CommDAO().getmap(str,"shiti").get("stname").toString();
 answers+=str+","+(request.getParameter("xx-"+stname)==null?"":request.getParameter("xx-"+stname))+"-";
 }
 if(answers.length()>0)answers=answers.substring(0,answers.length()-1);
 HashMap ext = new HashMap();
 ext.put("uname",uname);
 ext.put("answers",answers);
 new CommDAO().insert(request,response,"answers",ext,true,false);
 }
 
 String dis = t.equals("")?"disabled=disabled":"";
ArrayList<HashMap> list = PageManager.getPages("",10, "select * from shiti ORDER BY RAND() ", request ); 
int i = 0;
String ids = "";
for(HashMap map:list){ 
ids+=map.get("id")+"-";
i++;
%>
<tr align="center">

          <td align="left">
          
           
           <%=i%> . <%=map.get("stname")%>
           
           <%
           String answer = map.get("answer").toString();
           if(answer.equals("选项一"))answer=map.get("xx1").toString();
           if(answer.equals("选项二"))answer=map.get("xx2").toString();
           if(answer.equals("选项三"))answer=map.get("xx3").toString();
           if(answer.equals("选项四"))answer=map.get("xx4").toString();
            %>
           <input type=hidden name="answer<%=map.get("stname")%>"   value="<%= answer %>"  />
           
           <span id="sanswer<%=map.get("stname")%>" style="display: none">
           &nbsp;&nbsp;&nbsp;
           答案 : <%= answer %>
           </span>
          
         <table><tr><td></td></tr></table>
          <%
          String a[] = {"A","B","C","D"};
          int jj = 0;
          int random  = Integer.parseInt(String.valueOf(Math.random()).substring(2,3)) ;
          
          if(random%2==0){
          for(int j=1;j<=4;j++){
           %>
           <label>
          
          <input type=radio name="xx-<%=map.get("stname")%>" value="<%=map.get("xx"+j) %>" ><%=a[jj] %> . <%=map.get("xx"+j) %>
          
          </label>&nbsp;
          <%jj++;}}else{  
          
          for(int j=4;j>=1;j--){
           %>
           <label>
          
          <input type=radio name="xx-<%=map.get("stname")%>" value="<%=map.get("xx"+j) %>"><%=a[jj] %> . <%=map.get("xx"+j) %>
          
          </label>&nbsp;
          <%jj++;}
          } 
          
         
          %>
           
          <table><tr><td></td></tr></table>
          </td> 
    
</tr>
<%}
 if(ids.length()>0)ids=ids.substring(0,ids.length()-1);
%>
     <input type="hidden" name="ids" value="<%=ids %>" />
        
        <tr align="center">
          <td colspan=5 align="center"  colspan="8" height="35"> <input type="button"   id="btotal" onclick="total();"  value="提交试卷" /> </td>
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

      <script type="text/javascript">
      function total()
      {
       var spans = document.getElementsByTagName("span");
        for(var i=0;i<spans.length;i++)
       {
        spans[i].style.display='';
       }
       
       var t = 0;
       var ttt = "---";
       var radios = document.getElementsByTagName("input");
       for(var i=0;i<radios.length;i++)
       {
       if(radios[i].type=="radio")
       {
       var id = radios[i].name.split("-")[1];
       
       var answer = document.getElementById("answer"+id).value;
        
       if(radios[i].value==answer&&radios[i].checked)
       { 
       t++;
       ttt+=id+"---";
       } 
       }  
       }
        
        for(var jj=0;jj<spans.length;jj++)
       { 
       if(!( ttt.indexOf( spans[jj].id.substring(7))>-1&&spans[jj].id.indexOf("answer")>-1))
        spans[jj].innerHTML="<font color=red>"+spans[jj].innerHTML+"</font>";
       }
       document.getElementById("ftotal").value=t;
       alert("正确率 : "+t+"0%"); 
       document.getElementById("btotal").disabled="disabled";
       f1.submit();
      }
      </script>
      
      <iframe src="" name="totali" style="width: 1px;height: 1px" ></iframe>
      
  </form>
</body>
</html>
 <script language=javascript src='/massorganiza/js/ajax.js'></script>
 
<script language=javascript src='/massorganiza/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/massorganiza/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('noticesxg.jsp?id='+no,'信息修改',550,350) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('noticestj.jsp','信息添加',550,350) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 

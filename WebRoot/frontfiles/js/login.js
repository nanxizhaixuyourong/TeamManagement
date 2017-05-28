function loginyz()
 {

    if (document.getElementById('ctl00$username').value=="")
    {
        alert("请输入用户名");
        return false;
    }
    else if(document.getElementById('ctl00$password').value=="")
    {
         alert("请输入密码");
         return false;
    }

 }
 
 
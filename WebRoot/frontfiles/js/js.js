	
	

	
	function qiehuan(num){

		for(var id = 0;id<=8;id++)
		{
			if(id==num)
			{
				document.getElementById("qh_con"+id).style.display="block";
				document.getElementById("mynav"+id).className="nav_on";
			}
			else
			{
				document.getElementById("qh_con"+id).style.display="none";
				document.getElementById("mynav"+id).className="";
			}
		}
	}
	
	function showhidden(id,i){
		var select_obj=document.getElementsByTagName("select");
		if(i==1){
			document.getElementById(id).style.display="";
		}else{
			document.getElementById(id).style.display="none";
		}
}

function OpacityObject(divId, strPath) {
	this.id = divId;
	this.path = strPath;
	if (ns){
		if (browserVersion>=5) {
			this.layerObject = document.getElementById(divId).style;
		} else { 
			this.layerObject = eval("document."+divId);
		}
	} else {
		this.layerObject = eval(divId + ".style");
	}
	this.setBackground = od_object_setBackground;
}


                                       



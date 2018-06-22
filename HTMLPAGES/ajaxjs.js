var xmlhttp
var x=false;
function loadContent(a)
{

 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }
	if(a==1)
	{
		x=true;
    	var url="container.jsp";
	}
	else if(a==2)
	{
		x=false;
		var url="b_table.jsp";
	}
	else if(a==3)
	{
		x=false;
		var url="upload.jsp";
	}
	else if(a==4)
	{
		x=false;
		var url="news_akn.jsp";
	}
	else if(a==5)
	{
		x=false;
		var url="feedback.jsp";
	}
	else if(a==6)
	{
		x=false;
		var url="bupload.jsp";
	}
	else if(a==7)
	{
		x=false;
		var url="grupload.jsp";
	}
	else if(a==8)
	{
		x=false;
		var url="news.jsp";
	}
	else if(a==9)
	{
		x=false;
		var url="all_detail.jsp";
	}
	else if(a==11)
	{
		x=false;
		var url="upload1.jsp";
	}
	else if(a==12)
	{
		x=false;
		var url="upload2.jsp";
	}
	else if(a==13)
	{
		x=false;
		var url="feed1.jsp";
	}
	else if(a==14)
	{
		x=false;
		var url="login2.jsp";
	}
	
   	xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("POST",url,true);
	xmlhttp.send(null);
}

function getOutput()
{
	if(x==true)
	{
		if (xmlhttp.readyState==4)
		{
			document.getElementById("main").innerHTML=xmlhttp.responseText;
		}
	}
	else
	{
		if (xmlhttp.readyState==4)
		{
			document.getElementById("center").innerHTML=xmlhttp.responseText;
		}
	}
}

function GetXmlHttpObject()
{
    if (window.XMLHttpRequest)
    {
       return new XMLHttpRequest();
    }
    if (window.ActiveXObject)
    {
      return new ActiveXObject("Microsoft.XMLHTTP");
    }
 return null;
}

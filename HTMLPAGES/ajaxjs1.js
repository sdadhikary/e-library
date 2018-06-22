var xmlhttp1
var x1=false;
function loadContent1(a)
{

 xmlhttp1=GetXmlHttpObject1();

  if (xmlhttp1==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }
	if(a==1)
	{
		x1=false;
    	var url="gr1.jsp";
	}
	if(a==2)
	{
		x1=false;
		var url="deletechk.jsp";
    	//var url="gr2.jsp";
	}
	
   	xmlhttp1.onreadystatechange=getOutput1;
    xmlhttp1.open("POST",url,true);
	xmlhttp1.send(null);
}

function getOutput1()
{
	if(x1==true)
	{
		if (xmlhttp1.readyState==4)
		{
			document.getElementById("main").innerHTML=xmlhttp1.responseText;
		}
	}
	else
	{
		if (xmlhttp1.readyState==4)
		{
			document.getElementById("center").innerHTML=xmlhttp1.responseText;
		}
	}
}

function GetXmlHttpObject1()
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

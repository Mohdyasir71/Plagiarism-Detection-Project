<%@page import="java.util.Scanner"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URL"%>
<%@page import="DB.DbConnection"%>
<%@include file="top.jsp" %>


        
 <html>
<head>
<script>
function checkPlag()
{

flag=1;
document.getElementById("result").innerHTML="";
str =  document.getElementById("text").value;
if(document.all) 
	{ // IE
	s=str.replace(/\r\n/g," ");
	}
else 
	{ //Mozilla, chrome
	s=str.replace(/\n/g," ");
	}
if(s.length<250)
	{
	alert("Not Enought Content...!!!");
	return;
	}	
else
 {
 
    document.getElementById("anim").innerHTML='<img src="animate.gif" />';

	start=0;
	end=60;
    myVar = setInterval(function(){test(start++, end)},Math.round((Math.random()*3000))+5000);

 }//end else part
 
}//function


</script>







<script>
function test(start,end)
{

flag++;
str1 =  document.getElementById("text").value;

if(document.all) 
	{ // IE
	str1.replace(/\r\n/g," ");
	}
else 
	{ //Mozilla, chrome
	str1.replace(/\n/g," ");
	}

start=start*60;
tmp=start+45;
	if(tmp>=str1.length)
	 {
	 cancelPlag();
	 return;
	 }

    finals=str1.substr(start,end);

        var a=finals.indexOf(" ");
	var b=finals.lastIndexOf(" ");
        var c=b-a;
	fs=finals.substr(a,c);
	
	var fsss=fs;
	
	var fetchUrl=encodeURIComponent(fsss);
	
	xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","http://localhost:8084/PlagiarismDetectorNew/index.jsp?url="+fetchUrl+"&flag="+flag,true);
	xmlhttp.send();
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
			document.getElementById("result").innerHTML=document.getElementById("result").innerHTML+xmlhttp.responseText;
			}
		  }
					

}//end function

</script>










<script>
function cancelPlag()
{
clearInterval(myVar);
document.getElementById("anim").innerHTML="";

}
</script>




<style>
#result
{
max-height:400px;
overflow-y: auto;
border:3px double blue;
}

</style>







</head>
<body>
    
<center>


    <form action="#" method="get">
<textarea rows="20" cols="120" id="text" name="content"><%=request.getParameter("content")%></textarea>
<br><br><input type="submit" value="Check">

<button onClick="checkPlag()">Validity</button>
<button onClick="cancelPlag()">Stop</button>

    </form>
    <br />
<div id="anim"></div>

<h2>Results: </h2>
<div id="result">
   <%
            String CopyContent="";
           
                String userContent = request.getParameter("content");
                if (userContent != null) {
                    
                     try
                                       {
                   
                         DbConnection db=new DbConnection();
                    db.stmt=db.con.createStatement();
                    db.rst=db.stmt.executeQuery("select file_path from internet_content");
                   while(db.rst.next())
                                                   {
                          int a=0,b=0;
        URL oracle = new URL(db.rst.getString(1));
        URLConnection yc = oracle.openConnection();
        BufferedReader in = new BufferedReader(new InputStreamReader( yc.getInputStream()));
        String inputLine;
String replacestr="";
String netContent="";
String webData="";
int k=0;
       while ((inputLine = in.readLine()) != null) 
                       {
inputLine.replace("\n"," ");
inputLine.replace("\t"," ");
inputLine.replace("&nbsp;"," ");
netContent=netContent+inputLine;
}
//System.out.println(netContent);
try
{

for(int i=0;i<netContent.length();i++)
{
if(netContent.charAt(i)=='>')
{
a=i+1;
}
else
if(netContent.charAt(i)=='<')
{
b=i;
replacestr=netContent.substring(a,b);
//System.out.println(replacestr);
webData=webData+replacestr;
}


}

}
catch(Exception e)
{
e.printStackTrace();
}
System.out.println("*************************************************************Web Data1**********************************************************\n"+webData);
System.out.println("************************************************************User Content1*******************************************************\n"+userContent);
    

Scanner sc1=new Scanner(webData);
           sc1.useDelimiter(", *");
           String str1="",str2="";
    int count=0;
           while(sc1.hasNext())
           {
            str1=sc1.next();
Scanner sc2=new Scanner(userContent);
sc2.useDelimiter(", *");
 count=0;
while(sc2.hasNext())
{
    str2=sc2.next();
    if(str1.equals(str2))
    {
        count++;
        
        CopyContent +=str1+" ";
    }
}
    
           }

 
                out.println("<p style='text-align:justify;color:red;padding:5px 5px 5px 5px;font-size:14px;'>"+CopyContent+"</p>");
               // System.out.println("Copy Content  "+CopyContent);
                              }
                                     



 }
            catch(Exception e)
            {
                e.printStackTrace();
            }
                                                                                                 }
                              
                               %>

    
    
</div>

</body>
</html>

</center>
<br>
<br>
<%@include file="bottom.jsp"%>
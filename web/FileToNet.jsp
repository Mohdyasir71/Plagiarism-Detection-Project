<%@page import="java.util.Scanner"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="DB.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <form method=" post" action="#">
            <br><br>
            <textarea rows="20" cols="120" id="text" name="content" ><%=request.getParameter("content")%> </textarea>
            <br>
            <input type="submit" value="Check">

        </form>
            <br>
        <h2>Results: </h2>
        <div id="result" >
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

 
                out.println(CopyContent);
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
    </center>

</body>
</html>

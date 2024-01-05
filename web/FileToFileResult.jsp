

<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String fileName=null;
        String value = null;
        String fileSavePath =getServletContext( ).getRealPath("/");
        File f = null;
        int i = 0;
        long s = 0;
        //Variable declarations that are initialized to null or 0
//        int c = 0;
//        byte[] v1 = null;
//        byte[] v2 = null;
//        byte[] v3 = null;

        try {
                    //  System.out.println("aaaaaa"+request.getParameter("doc1"));
                File f1=new File(request.getParameter("doc1"));//Creates a new File object using the file path obtained from the "doc1" parameter of the HTTP request.
                //File f2=new File(request.getParameter("doc2"));
                 String line = null;
    String message=""; 
    //Reading the content of the file using
                 BufferedReader  reader = new BufferedReader(new FileReader(f1));
            while ((line = reader.readLine()) != null)
                //Reads each line of the file and appends it to the message string.
            {
                message += line;
            }
                 System.out.println("ok"+message);
                Scanner scanner=new Scanner(f1);
                // Initializes a Scanner to read the file.
                while(scanner.hasNext())
                                       {
                    System.out.println(scanner.next());
                }
                System.out.println("File1111111111"+f1.toString());
                
                       }

        catch(Exception e)
                               {
            out.println(e);
        }
        %>
        
        
    </body>
</html>

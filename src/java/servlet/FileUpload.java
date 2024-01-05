/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;
import java.io.*;
import java.net.URI;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class FileUpload extends HttpServlet {

     protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        String fileName=null;
        String value = null;
        String fileSavePath ="C:/uploads/";
        File f = null;
        int  i = 0;
        long s = 0;
    String content1="",content2="";
        try {
            MultipartParser mps = new MultipartParser(request, 5 * 1024 * 1024);//5
            Part part;
                part = mps.readNextPart();
                String name = part.getName();
                if (part.isParam()) {

                    System.out.print(i);
                    ParamPart paramPart = (ParamPart) part;
                    value= paramPart.getStringValue();

                    i++;


                } else if (part.isFile()) {
                    FilePart filePart = (FilePart) part;
                    fileName = filePart.getFileName();
                       String line = null;
                      
            BufferedReader reader = new BufferedReader(new FileReader("c:/uploads/"+fileName));
            while ((line = reader.readLine()) != null)
            {
                content1 += line;
            }
            
  System.out.println("content1  "+content1);      
                 
                }
            
                part = mps.readNextPart();
                
                        name = part.getName();
            
                if (part.isParam()) {

                    System.out.print(i);
                    ParamPart paramPart = (ParamPart) part;

            
                    value= paramPart.getStringValue();


                    i++;


                } else if (part.isFile()) {
                    FilePart filePart = (FilePart) part;
                    fileName = filePart.getFileName();
                       String line = null;
             
                       BufferedReader reader = new BufferedReader(new FileReader("c:/uploads/"+fileName));
           while ((line = reader.readLine()) != null)
            {
                content2 += line;
            }
  System.out.println("content2  "+content2);      
            
            }
String copyContent="";
Scanner sc1=new Scanner(content1);
           sc1.useDelimiter(", *");
           String str1="",str2="";
    int count=0;
           while(sc1.hasNext())
           {
            str1=sc1.next();
Scanner sc2=new Scanner(content2);
sc2.useDelimiter(", *");
while(sc2.hasNext())
{
    str2=sc2.next();
    if(str1.equals(str2))
    {
        count++;
        copyContent +=str1+",  ";
    }
}
    
           }
        out.println("<center>");
        out.println("<table style='width:700px;border:4px groove maroon;border-radius:25px 25px 25px 25px;height:600px;'>");
        
        out.println("<tr>");
            out.println("<td colspan='5' style='width:700px;height:50px;text-align:center;color:maroon;font-family:algerian;text-decoration:underline;'><h1> Plagiarism <em>Detector </em></h1></td>");
        out.println("</tr>");        

       out.println("<tr>");
            out.println("<td style='width:25px;height:50px;'>&nbsp;</td>");
            out.println("<td style='width:300px;height:50px;text-align:center;color:maroon;font-family:algerian;text-decoration:underline;'> File 1 Content </td>");
            out.println("<td style='width:50px;height:50px;'>&nbsp;</td>");                
            out.println("<td style='width:300px;height:50px;text-align:center;color:maroon;font-family:algerian;text-decoration:underline;'> File 2 Content </td>");
            out.println("<td style='width:25px;height:50px;'>&nbsp;</td>");        
        out.println("</tr>");        
        
        out.println("<tr>");
            out.println("<td style='width:25px;height:300px;'>&nbsp;</td>");
            out.println("<td style='width:300px;height:300px;'><p style='text-align:justify;width:300px;height:300px;border:2px solid maroon;overflow-y:scroll;padding:5px 5px 5px 5px;'>"+content1+"</p></td>");
            out.println("<td style='width:50px;height:300px;'>&nbsp;</td>");                
            out.println("<td style='width:300px;height:300px;'><p style='text-align:justify;border:2px solid maroon;width:300px;height:300px;overflow-y:scroll;padding:5px 5px 5px 5px;'>"+content2+"</p></td>");
            out.println("<td style='width:25px;height:300px;'>&nbsp;</td>");        
        out.println("</tr>");        
        
        out.println("<tr>");
            out.println("<td colspan='5' style='width:700px;height:50px;text-align:center;color:maroon;font-family:algerian;text-decoration:underline;'>Both File Content</td>");
        out.println("</tr>");                
        
       out.println("<tr>");
            out.println("<td style='width:25px;height:150px;'>&nbsp;</td>");
            out.println("<td style='width:650px;height:150px;' colspan='3'><p style='border:2px solid maroon;padding:5px 5px 5px 5px;width:650px;height:150px;overflow-y:scroll;'>"+copyContent+"</p></td>");
            out.println("<td style='width:25px;height:150px;'>&nbsp;</td>");        
        out.println("</tr>");        
        
        out.println("<tr>");
            out.println("<td colspan='5' style='width:700px;height:50px;text-align:center;color:maroon;font-family:algerian;'><h4>Number Of Reptead Statement : <span style='color:red;font-size:20px;'>"+count+" <span></h4></td>");
        out.println("</tr>");        
        
        out.println("</table>");        
        out.println("</center>");
        
        
        }   
        catch (Exception e) {
            System.out.println(e);
        }
      
    }

}

 <%@page import="sun.font.Font2D"%>
<%@include file="top.jsp" %>

<center>

<div style="width:900px;height:450px;background-image:url('images/bg.png');">
        
                    <div style="width:300px;height:400px;float:left;text-align:left;">
                    
			<form action="LoginServlet" method="get">

                    <fieldset style="width:280px;height:380px;">
                        <legend style="font-size:30px;"> Login </legend>
                        <table style="width:280px;height:300px;">
                                
                            <tr>
                                <td style="width:280px;text-align:left;">
                                
                                    UserName :
                                
                                </td>
                            </tr>
                            <tr>
                                <td style="width:280px;text-align:left;">
                                
                                    <input style="width:270px;" type="text" name="t1" />
                                
                                </td>
                            </tr>                                                    
                            <tr>
                                <td style="width:280px;text-align:left;">
                                
                                    Password :
                                
                                </td>
                            </tr>
                            <tr>
                                <td style="width:280px;text-align:left;">
                                
                                    <input style="width:270px;" type="password" name="t2" />
                                
                                </td>
                            </tr>
                            <tr>
                                <td style="width:280px;text-align:left;">
                                
                                <table style="width:280px;height:80px;">
                                
                                    <tr>
                                    
                                        <td style="width:5px;">&nbsp;</td>
                                    
                                        <td style="width:120px;text-align:left;">
                                            <input type="submit" style="width:120px;" value="Submit" name="s"/>
                                        </td>

                                        <td style="width:5px;">&nbsp;</td>

                                        <td style="width:120px;text-align:left;">
                                            <input type="reset" style="width:120px;" name="r"/>
                                        </td>
                                    
                                        <td style="width:5px;">&nbsp;</td>
                                    </tr>
                                                                   
                                </table>
                                
                                </td>
                            </tr>
                            <tr>
                                <td style="width:280px;text-align:left;">
                                <span style="color:green;">If not register yet ? </span><a href="registration.jsp"> Click here </a>                                                                
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%
                                    String str=request.getParameter("msg");
                                    if(str!=null)
                                      {
                                     out.println("<span style='color:Red;font-size:16px;'>"+str);  
                                    }
                                    %>
                                    
                                </td>
                                
                            </tr>
                        </table>
                    
			
			
                    </fieldset>
                    </form>
                    </div>
        
                    <div style="width:600px;height:450px;float:left;padding-top:0px;">
                    
                        <table height="100%" width="100%" style="color:#000000;">
                            <tr>
                                <td height="100%" width="5%"></td>
                                <td height="100%" width="90%">
                                    <table height="100%" width="100%" style="color:#000000;text-align:justify;">
                                        <tr>
                                            <td height="100S%" width="90%">
                                                <h1>Welcome </h1>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Plagiarism in coding is not entirely a new phenomenon. The issue has been discussed and studied previously by researchers to identify the severity of the problem and what factors contribute to the act of plagiarism.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="100%" width="90%">
                                                <table>
                                                    <tr>
                                                        <td height="100%" width="30%"><img src="images/Picture8.jpg" width="206" height="100" /></td>
                                                        <td height="100%" width="60%" style="text-align:justify;">
  </tr>
                                                </table>
                                            </td>
                                          </tr>
                                        
                                        <tr>
                                            <td>
                                                <h3>What You Should Do to Plagiarizing Detector </h3>
                                          Plagiarism in coding is not entirely a new phenomenon. </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="images/arrow.jpg" />	Register on free of cost <br />
                                                <img src="images/arrow.jpg" />	then, simply login and enjoy
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td height="100%" width="5%"></td>
                            </tr>

                        </table>
                    
                    </div>
                            
        </div>

</center>


<%@include file="bottom.jsp" %>
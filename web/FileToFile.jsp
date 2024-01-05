<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="top.jsp" %>

<center>

<div style="width:950px;height:300px;color:black;">
    
    <div style="width:300px;height:300px;float:left;">
        
         <img src="images/gal6.jpg" height="200px" width="200px" />
        
    </div>
    
    <div style="width:600px;height:300px;float:right;padding-left: 0px;">

        <fieldset style="width:600px;">
            <legend style="font-size:25px;"> Upload Files </legend>
            
                        <form action="FileUpload" method="post" enctype="multipart/form-data">
    <table width="400" height="200px">
        
        <tr><td>Select File1</td><td><input type="file" name="doc1"  /></td></tr>
      <tr><td>Select File2</td><td><input type="file" name="doc2" /></td></tr>
        <tr><td><Input type="reset" value="Cancel"></td><td><input type="submit" value="Submit" name="Check" /></td></tr>
            </table>
    </form>             
            
        </fieldset>
        



    </div>
    

 </div>

</center>

<%@include file="bottom.jsp"%>
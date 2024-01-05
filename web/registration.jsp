

    
    <%@include file="top.jsp" %>

   <center>


<div style="width:950px;height:400px;color:black;">
        
        <table style="width:950px;" cellpadding="0" border="0" cellspacing="0">
            <tr>
                <td style="width:225px;">
                </td>
                <td style="width:500px;">
                </td>
                <td style="width:225px;">
                </td>
            </tr>
            <tr>
                <td style="width:225px;">
                </td>
                <td style="width:500px;">
		    <form action="RegServlet" method="get" onsubmit="return check()">
                    <table style="width:500px;height:400px;" cellpadding="0" border="0" cellspacing="0">
                        <tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;
                            </td>
                            <td style="width:200px;text-align:left;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;UserName(E Mail) </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;:
                            </td>
                            <td style="width:200px;text-align:left;">
                                <input type="email" name="t1">
                            </td>
                        </tr>
                        <tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;Password
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;:
                            </td>
                            <td style="width:200px;text-align:left;">
                                <input type="password" name="t2">
                            </td>
                        </tr>
                        <tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;Confirm Password
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;:
                            </td>
                            <td style="width:200px;text-align:left;">
                                <input type="password" name="t3">
                            </td>
                        </tr>
                        
		
                        <tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;Name
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;:
                            </td>
                            <td style="width:200px;text-align:left;">
                                <input type="text" name="t4">
                            </td>
                        </tr>
			<tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;Gender
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;:
                            </td>
                            <td style="width:200px;text-align:left;">
                                <input style="width:20px;" type="radio" name="t5" value="Male"> Male
				      <input style="width:20px;" type="radio" name="t5" value="Female"> Female
                            </td>
                        </tr>
			<tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;Mobile
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;:
                            </td>
                            <td style="width:200px;text-align:left;">
                                <input type="number" name="t6">
                            </td>
                        </tr>
			<tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;Address
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;:
                            </td>
                            <td style="width:200px;text-align:left;">
                                <textarea name="t7"></textarea>
                            </td>
                        </tr>
			<tr>
                            <td colspan="3">
                                <input style="width:20px;" type="checkbox" name="c"> I accept all terms and condition regarding the use of this website.
                            </td>
                        </tr>
			<tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;<input style="width:120px;" type="submit" value="SUBMIT" name="s">
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;
                            </td>
                            <td style="width:200px;text-align:left;">
                                &nbsp;<input style="width:120px;" type="reset" value="RESET" name="r">
                            </td>
                        </tr>
			<tr>
                            <td style="width:200px;text-align:left;">
                                &nbsp;
                            </td>
                            <td style="width:100px;text-align:center;">
                                &nbsp;
                            </td>
                            <td style="width:200px;text-align:left;">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
		    </form>
                </td>
                <td style="width:225px;">
                </td>
            </tr>
            <tr>
                <td style="width:225px;">
                </td>
                <td style="width:500px;">
                </td>
                <td style="width:225px;">
                </td>
            </tr>
        </table>
                            
        </div>

</center>

<%@include file="bottom.jsp"%>

</html>
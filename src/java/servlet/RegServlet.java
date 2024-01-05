/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DB.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Analyze
 */
public class RegServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
 String v1=request.getParameter("t1");
 String v2=request.getParameter("t2");
 String v3=request.getParameter("t3");
 String v4=request.getParameter("t4");
 String v5=request.getParameter("t5");
 String v6=request.getParameter("t6");
 String v7=request.getParameter("t7");

    
 DbConnection db=new DbConnection();
 db.pstmt=db.con.prepareStatement("INSERT INTO login_info(user,pswd,name,gender,mobile,addr) values(?,?,?,?,?,?)");
db.pstmt.setString(1, v1);
db.pstmt.setString(2, v3);
db.pstmt.setString(3, v4);
db.pstmt.setString(4, v5);
db.pstmt.setString(5, v6);
db.pstmt.setString(6, v7);
int i=db.pstmt.executeUpdate();
if(i>0)
{
    out.println("<script>alert('Successfully Registerd')</script>");
    response.sendRedirect("index.jsp");
} 
 else
{
    out.println("Duplicate User does not Allow");
}
    
 
 
 
 
 
 
        } 
         catch(Exception e) {            
    out.println("<script>alert('Duplicate User Does not Allow')</script>");
    response.sendRedirect("registration.jsp");
        e.printStackTrace();
       
         }
    
    
    }

    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

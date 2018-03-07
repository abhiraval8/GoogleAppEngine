/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTMLDocument;

/**
 *
 * @author manth
 */
@WebServlet(urlPatterns = {"/insertdata"})
public class insertdata extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              
                try
                {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                }
                catch(ClassNotFoundException e)
                {
                    e.getMessage();
                }
                try
            {
                String username="manthan";
                String password="manthan";
                Connection cn=DriverManager.getConnection("jdbc:derby://localhost:1527/GAE",username,password);
                String fname=request.getParameter("firstname");
                String lname=request.getParameter("lastname");
                String dob=request.getParameter("dob");
                String gender=request.getParameter("gender");
                String address=request.getParameter("address");
                String email=request.getParameter("email");
                String collage_name=request.getParameter("collagename");
                String semester=request.getParameter("semester");
                String department=request.getParameter("department");
                
                if((fname==null)||(lname==null)||(dob==null)||(gender==null)||(address==null)||(email==null)||(collage_name==null)||(department==null))
                {
                        out.println("Field should not be Empty");
                }
                else
                {
                    PreparedStatement pst=cn.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?)");
                    pst.setString(1, fname);
                    pst.setString(2, lname);
                    pst.setString(3, dob);
                    pst.setString(4, gender);
                    pst.setString(5, address);
                    pst.setString(6, email);
                    pst.setString(7, semester);
                    pst.setString(8, department);
                    pst.setString(9, collage_name);
                    pst.executeUpdate();
                    RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
                    rd.forward(request, response);
                }
                
            }catch(Exception e)
            {
                out.println(e.getMessage());
            }
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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

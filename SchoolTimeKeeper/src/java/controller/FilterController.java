/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import static java.lang.System.out;
import javax.xml.ws.Response;
import model.Account;
import model.Feature;
import model.Role;

/**
 *
 * @author buidu_8h8ybgq
 */
public abstract class FilterController extends HttpServlet {

    private boolean isLogin(HttpServletRequest request) {
        Account account = (Account) request.getSession().getAttribute("acc_ses");
        String statusLog = null;
        String ownRole = "Vai trò hiện có: ";
        String ownFeature = "Tính năng hiện có trên tài khoản này: ";
        if (account == null) {
            //ownFeature = "Khách";
            statusLog = "null";
            request.setAttribute("ownRole", "Khách");
            request.setAttribute("ownFeature", "Khách");
            request.setAttribute("statusLog", statusLog);
            return false;
        } else {
            String currentURL = request.getServletPath();
            request.setAttribute("curURL", currentURL);
            for (Role role : account.getRoles()) {
                ownRole = ownRole + " _ " + role.getName();
                request.setAttribute("ownRole", ownRole);
                for (Feature feature : role.getFeatures()) {
                    ownFeature = ownFeature + " _ " + feature.getUrl();
                    request.setAttribute("ownFeature", ownFeature);
                    if (currentURL.equals("/" + feature.getUrl())) {
                        statusLog = "accept";
                        request.setAttribute("statusLog", statusLog);
                        return true;

                    }
                }
            }
        }
        statusLog = "denied";
        request.setAttribute("ownRole", ownRole);
        request.setAttribute("ownFeature", ownFeature);
        request.setAttribute("statusLog", statusLog);
        return false;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
        if (isLogin(request)) {
            processGet(request, response);
        } else {
            request.getRequestDispatcher("check/denied.jsp").forward(request, response);
        }
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
        if (isLogin(request)) {
            processGet(request, response);
        } else {
            request.getRequestDispatcher("check/denied.jsp").forward(request, response);
        }
    }

    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;

    protected abstract void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;

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

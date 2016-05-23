package xyz.dimonick.Servlet;


import org.apache.commons.fileupload.servlet.ServletFileUpload;
import xyz.dimonick.Tools.StringFromFile;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ResultsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher dispatcher = req.getRequestDispatcher("/result.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding ("UTF-8");
        if(ServletFileUpload.isMultipartContent(req)){
            String text = StringFromFile.receiveString(req);
            req.setAttribute("textIn", text);
        }else {
            req.setAttribute("textIn", req.getParameter("inputText"));
        }

        RequestDispatcher dispatcher = req.getRequestDispatcher("/result.jsp");
        dispatcher.forward(req, resp);
    }
}

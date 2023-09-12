package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class Contacto extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Contacto() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String mensaje = request.getParameter("mensaje");

        request.setAttribute("nombre", nombre);
        request.setAttribute("correo", correo);
        request.setAttribute("mensaje", mensaje);

        RequestDispatcher rd = request.getRequestDispatcher("/contacto.jsp");
        rd.forward(request, response);
    }
}
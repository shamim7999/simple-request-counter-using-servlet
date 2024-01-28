package com.request.counter.counter;

import java.io.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello")
public class HelloServlet extends HttpServlet {

    private int cnt=0;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        request.setAttribute("counter", this.cnt++);
        request.setAttribute("localDateTime", LocalDateTime.now());
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}
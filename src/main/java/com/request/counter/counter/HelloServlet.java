package com.request.counter.counter;

import java.io.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

import com.request.counter.counter.helper.DateFormatter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello")
public class HelloServlet extends HttpServlet {

    private int cnt=0;
    private List<String> colors = List.of(
            "purple", "blue", "indigo", "green", "yellow", "orange", "red",
            "pink", "magenta", "black", "#DFFF00", "#0B5345"
    );

    private List<String> buttons = List.of(
            "primary", "danger", "success", "secondary", "warning", "info", "dark"
    );
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        int colorListSize = colors.size();
        int buttonListSize = buttons.size();
        LocalDateTime localDateTime = LocalDateTime.now();
        request.setAttribute("counter", this.cnt++);
        request.setAttribute("localDateTime", localDateTime);
        request.setAttribute("localDate", LocalDate.now());
        request.setAttribute("localTime", LocalTime.now());
        request.setAttribute("formattedDate", DateFormatter.convertToYearTimeDay(localDateTime));
        request.setAttribute("color", colors.get(this.cnt%colorListSize));
        request.setAttribute("type", buttons.get(this.cnt%buttonListSize));

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}
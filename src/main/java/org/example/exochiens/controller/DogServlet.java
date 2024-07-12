package org.example.exochiens.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.exochiens.model.Dog;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@WebServlet(name = "dogservlet", value = "/dog/*")
public class DogServlet extends HttpServlet {
    private List<Dog> dogs;

    @Override
    public void init() throws ServletException {
        dogs = new ArrayList<Dog>();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setAttribute("dogs", dogs);
        String pathInfo = req.getPathInfo().substring(1);
        int searchId;
        switch (pathInfo) {
            case "list":
                showAll(req, resp);
                break;
            case "add":
                showForm(req, resp);
                break;
            case "detail":
                showDetail(req, resp);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String breed = req.getParameter("breed");
        LocalDate dateOfBirth = LocalDate.parse(req.getParameter("dateOfBirth"));

        Dog dog = new Dog(id, name, breed, dateOfBirth);
        dogs.add(dog);

        req.setAttribute("dogs", dogs);
        req.getRequestDispatcher("/pages/list.jsp").forward(req, resp);
    }

    protected void showAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("dogs", dogs);
        req.getRequestDispatcher("/pages/list.jsp").forward(req, resp);
    }

    protected void showForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/pages/form.jsp").forward(req, resp);
    }

    protected void showDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/pages/detail.jsp").forward(req, resp);
    }
}

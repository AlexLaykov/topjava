package ru.javawebinar.topjava.web;

import ru.javawebinar.topjava.util.UserMealsUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Created by aleksandrlajkov on 06.03.16.
 */
public class MealServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("mealList", UserMealsUtil.getWithExceeded(UserMealsUtil.mealList, 2000));
        request.getRequestDispatcher("/mealList.jsp").forward(request, response);
    }
}

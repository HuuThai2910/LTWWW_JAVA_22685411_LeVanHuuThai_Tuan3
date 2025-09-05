package fit.iuh.edu.levanhuuthai_22685411_tuan3.Bai1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "registerServlet", value = "/bai1/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String day = request.getParameter("dobDay");
        String month = request.getParameter("dobMonth");
        String year = request.getParameter("dobYear");
        String email = request.getParameter("email");
        String number = request.getParameter("number");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String code = request.getParameter("code");
        String state = request.getParameter("state");
        String country = request.getParameter("country");

        String[] hobbiesArray = request.getParameterValues("hobby");
        String hobbyOther = request.getParameter("hobbyOther");
        List<String> hobbies = hobbiesArray != null
                ? Arrays.asList(hobbiesArray)
                : new java.util.ArrayList<>();
        if (hobbyOther != null && !hobbyOther.trim().isEmpty()) {
            hobbies.add(hobbyOther);
        }
        int monthValue = convertMonthToNumber(month);

        LocalDate dateOfBirth = LocalDate.of(Integer.parseInt(year), monthValue,Integer.parseInt(day) );
        User user = new User(
                firstName, lastName, dateOfBirth,
                email, number, address,
                city, code, state,
                country, hobbies
        );
        request.setAttribute("user", user);
        request.getRequestDispatcher("result.jsp").forward(request, resp);

    }

    private int convertMonthToNumber(String month) {
        switch (month) {
            case "J an":
                return 1;
            case "Feb":
                return 2;
            case "Mar":
                return 3;
            case "Apr":
                return 4;
            case "May":
                return 5;
            case "Jun":
                return 6;
            case "Jul":
                return 7;
            case "Aug":
                return 8;
            case "Sep":
                return 9;
            case "Oct":
                return 10;
            case "Nov":
                return 11;
            case "Dec":
                return 12;
            default:
                return 1;

        }
    }
}

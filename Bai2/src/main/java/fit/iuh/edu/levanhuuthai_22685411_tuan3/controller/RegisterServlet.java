package fit.iuh.edu.levanhuuthai_22685411_tuan3.controller;

import fit.iuh.edu.levanhuuthai_22685411_tuan3.DBConnection;
import fit.iuh.edu.levanhuuthai_22685411_tuan3.model.Gender;
import fit.iuh.edu.levanhuuthai_22685411_tuan3.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mariadb.jdbc.Connection;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.*;
import java.time.LocalDate;

@WebServlet(name = "registerServlet", value = "/register")
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
        String password = request.getParameter("password");
        Gender gender = request.getParameter("gender").equals("Male")
                ? Gender.MALE
                : Gender.FEMALE;

        int monthValue = convertMonthToNumber(month);

        LocalDate dateOfBirth = LocalDate.of(Integer.parseInt(year), monthValue,Integer.parseInt(day) );
        User user = new User(
                firstName, lastName, email,
                password, dateOfBirth, gender
        );
        try (Connection conn = DBConnection.getConnection()) {
            String sqlInsert = "INSERT INTO users (first_name, last_name, email, password, birthday, gender) values (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sqlInsert);
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());
            statement.setDate(5, Date.valueOf(user.getDateOfBirth()));
            statement.setString(6, String.valueOf(user.getGender()));

            int row = statement.executeUpdate();
            // thực hiện lưu thông tin vào CSDL
            if (row > 0) {
                request.setAttribute("user", user);
                request.getRequestDispatcher("result.jsp").forward(request, resp);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


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

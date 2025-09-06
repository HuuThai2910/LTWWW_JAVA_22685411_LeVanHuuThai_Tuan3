/*
 * @ (#) .java    1.0
 * Copyright (c)  IUH. All rights reserved.
 */
package fit.iuh.edu.levanhuuthai_22685411_tuan3;

import org.mariadb.jdbc.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * @description
 * @author: Huu Thai
 * @date:
 * @version: 1.0
 */
public class DBConnection {
    private static final String JDBC_URL = "jdbc:mariadb://localhost:3306/uploaduseregister";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "sapassword";

    static {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return (Connection) DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }
}

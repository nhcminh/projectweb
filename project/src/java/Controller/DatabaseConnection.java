/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author a2mrk
 */
public class DatabaseConnection {

    public static Connection DbConnection;
    public Connection connection;
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/project";
    String user = "root";
    String dbpsw = "admin";

    public DatabaseConnection() throws ClassNotFoundException, SQLException {
        try {
            Class.forName(driverName);
            connection = (Connection) DriverManager.getConnection(url, user, dbpsw);
            System.out.print("connection sucess");

        } catch (SQLException sqe) {
            System.out.print("Wrong in create connection");
        }
    }
}

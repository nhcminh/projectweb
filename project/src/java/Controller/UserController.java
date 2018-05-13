/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author a2mrk
 */
public class UserController {

    private static DatabaseConnection db;
    private static Statement stm;
    private static ResultSet re;
    private static User user;

    static void connection(String query) throws ClassNotFoundException, SQLException {
        db = new DatabaseConnection();
        stm = db.connection.createStatement();
        re = stm.executeQuery(query);
    }

    public boolean login(String username, String password) throws ClassNotFoundException, SQLException {
        connection("select * from user");
        while (re.next()) {
            if (username.equals(re.getString("Username")) && password.equals(re.getString("Password"))) {
                return true;
            }
        }
        return false;
    }
    public void Register(User user) throws SQLException{
        stm.executeUpdate("insert into user values ('"+user.getUsername()+"','"+user.getFullname()+"','"+user.getEmail()+"','"+user.getPassword()+"','Author',)");
    }
    public User getInfor(String username) throws ClassNotFoundException, SQLException {
        connection("select Username, Fullname, Email, Role from user where Username='"+username+"'");
        user = new User();
        re.next();
        String Fullname = re.getString("Fullname");
        String Username = re.getString("Username");
        String Email = re.getString("Email");
        String Role = re.getString("Role");
        user.setFullname(Fullname);
        user.setUsername(Username);
        user.setEmail(Email);
        user.setRole(Role);
        return user;
    }

    public UserController() {
    }

    public boolean register(User user, String pass2) throws ClassNotFoundException, SQLException {
        connection("select * from User");
        while (re.next()) {
            return !(user.getFullname().equals(re.getString("Fullname")) || user.getEmail().equals("Email") || user.getUsername().equals("Username") || user.getPassword() != pass2);
        }
        return false;
    }

    public void resetpassword() {
    }

    public void changpassword(String username, String newpassword) throws ClassNotFoundException, SQLException {
        connection("update User set Password ='" + newpassword + "' where Username='" + username + "'");
    }

    public void search() {
    }

    public void editprofile(String username, User user) throws ClassNotFoundException, SQLException {
        System.out.println(username);
        System.out.println(user.getFullname());
        stm.executeUpdate("update User set Fullname ='" + user.getFullname() + "' where Username='" + username + "'");
        stm.executeUpdate("update User set Email ='" + user.getEmail() + "' where Username='" + username + "'");
    }
}

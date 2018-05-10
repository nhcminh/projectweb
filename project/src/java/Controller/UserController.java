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

    static void connection(String query) throws ClassNotFoundException, SQLException {
        db = new DatabaseConnection();
        stm = db.connection.createStatement();
        re = stm.executeQuery(query);
    }

    public boolean login(String username, String password) throws ClassNotFoundException, SQLException {
        connection("select Username, Password from user");
        while (re.next()) {
            return re.getString("Username").equals(username) && re.getString("Password").equals(password);
        }
        
        return false;
    }

    public UserController() {
    }

    public boolean register(User user, String pass2) throws ClassNotFoundException, SQLException {
        connection("select * from User");
        while (re.next()) {
            return !(user.getFullname().equals(re.getString("Fullname")) || user.getEmail().equals("Email") || user.getUsername().equals("Username") || user.getPassword()!=pass2);
        }
        return false;
    }
    public void resetpassword(){}
    public void changpassword(String username, String newpassword) throws ClassNotFoundException, SQLException{
        connection("update User set password ='"+newpassword+"' where username='"+username+"'");
    }
    public void search(){}
    public void editprofile(String username, User user) throws ClassNotFoundException, SQLException{
        connection("update User set password ='"+user.getFullname()+"' where username='"+username+"'");
        connection("update User set password ='"+user.getEmail()+"' where username='"+username+"'");
    }
}

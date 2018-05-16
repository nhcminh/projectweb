/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Article;
import Model.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author a2mrk
 */
public class ArticleController {

    private static DatabaseConnection db;
    private static Statement stm;
    private static ResultSet re;
    private static User user;

    private static void connection(String query) throws ClassNotFoundException, SQLException {
        db = new DatabaseConnection();
        stm = db.connection.createStatement();
        re = stm.executeQuery(query);
    }

    public void addAriticle(Article article) throws SQLException {
        stm.executeUpdate("insert into article values ('" + article.getTitle()+"',"
                + "'" + article.getAuthor() + "',"
                + "'" + article.getCategory() + "',"
                + "'" + article.getContent() + "',"
                + "'" + article.getApproveBy() + "',"
                + "'" + article.getDateCreate().toString() + "',"
                + "'" + article.isIsHot() + "',"
                + "'" + article.isIsPending()+"')");
    }
    public void approveArticle(String name, Article article) throws SQLException{
        stm.executeUpdate("update Article set ApproveBy='"+name+"' where Title='"+article.getTitle()+"'");
        stm.executeUpdate("update Article set IsPending='fasle' where Title='"+article.getTitle()+"'");
    }
    public void deleteArticle(Article article) throws SQLException{
        stm.executeUpdate("delete from Article where Title='"+article.getTitle()+"'");
    }
    public void changeCategory(String newcategory,Article article) throws SQLException{
        stm.executeUpdate("update Article set Category='"+newcategory+"' where Title='"+article.getTitle()+"'");
    }
}

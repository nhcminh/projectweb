/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author a2mrk
 */
public class Article {
    private String IDArticle;
    private String Author;
    private String Category;
    private Date DateCreate;
    private String Content;
    private String ApproveBy;
    private boolean IsHot;
    private boolean IsPending;

    public String getIDArticle() {
        return IDArticle;
    }

    public void setIDArticle(String IDArticle) {
        this.IDArticle = IDArticle;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String Author) {
        this.Author = Author;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    public Date getDateCreate() {
        return DateCreate;
    }

    public void setDateCreate(Date DateCreate) {
        this.DateCreate = DateCreate;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getApproveBy() {
        return ApproveBy;
    }

    public void setApproveBy(String ApproveBy) {
        this.ApproveBy = ApproveBy;
    }

    public boolean isIsHot() {
        return IsHot;
    }

    public void setIsHot(boolean IsHot) {
        this.IsHot = IsHot;
    }

    public boolean isIsPending() {
        return IsPending;
    }

    public void setIsPending(boolean IsPending) {
        this.IsPending = IsPending;
    }
}

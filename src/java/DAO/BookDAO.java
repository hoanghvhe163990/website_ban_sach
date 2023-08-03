/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.Account_HE163990;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Models.Category_HE163990;
import Models.Book_HE163990;
import Models.Publisher_HE163990;
import java.nio.file.Files;

/**
 *
 * @author lenam
 */
public class BookDAO extends DBContext {

    public List<Book_HE163990> getAllBook() {
        List<Book_HE163990> list = new ArrayList<>();
        String sql = "select * from Book_HE163990";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Book_HE163990 b = new Book_HE163990();
                b.setBid(rs.getInt("bid"));
                b.setBname(rs.getString("bname"));
                Category_HE163990 c = getCategory_HE163990byCid(rs.getString("cid"));
                b.setCategory(c);
                b.setAuthor(rs.getString("author"));
                Publisher_HE163990 p = getPublisher_HE163990byPid(rs.getString("pid"));
                b.setPublisher(p);
                b.setImage(rs.getString("image"));
                b.setQuantity(rs.getInt("quantity"));
                b.setDescribe(rs.getString("describe"));
                b.setPrice(rs.getFloat("price"));
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Category_HE163990> getAllCategory() {
        List<Category_HE163990> list = new ArrayList<>();
        String sql = "SELECT TOP (1000) [cid]\n"
                + "      ,[cname]\n"
                + "  FROM [PRJ301_SE1706].[dbo].[Category_HE163990]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category_HE163990 c = new Category_HE163990();
                c.setCid(rs.getInt("cid"));
                c.setCname(rs.getString("cname"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Publisher_HE163990> getAllPublisher() {
        List<Publisher_HE163990> list = new ArrayList<>();
        String sql = "SELECT TOP (1000) [pid]\n"
                + "      ,[pname]\n"
                + "  FROM [PRJ301_SE1706].[dbo].[Publisher_HE163990]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Publisher_HE163990 p = new Publisher_HE163990();
                p.setPid(rs.getInt("pid"));
                p.setPname(rs.getString("pname"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

//     doc tu bang book theo cid
    public List<Book_HE163990> getBook_HE163990ByCid(String cid) {
        List<Book_HE163990> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [Book_HE163990]\n"
                + "  where cid = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Book_HE163990 b = new Book_HE163990();
                b.setBid(rs.getInt("bid"));
                b.setBname(rs.getString("bname"));
                Category_HE163990 c = getCategory_HE163990byCid(rs.getString("cid"));
                b.setCategory(c);
                b.setAuthor(rs.getString("author"));
                b.setImage(rs.getString("image"));
                Publisher_HE163990 p = getPublisher_HE163990byPid(rs.getString("pid"));
                b.setPublisher(p);
                b.setQuantity(rs.getInt("quantity"));
                b.setDescribe(rs.getString("describe"));
                b.setPrice(rs.getFloat("price"));
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Book_HE163990> getBook_HE163990ByPriceLow() {
        List<Book_HE163990> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [Book_HE163990]\n"
                + " order by price ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Book_HE163990 b = new Book_HE163990();
                b.setBid(rs.getInt("bid"));
                b.setBname(rs.getString("bname"));
                b.setAuthor(rs.getString("author"));
                b.setImage(rs.getString("image"));
                b.setQuantity(rs.getInt("quantity"));
                b.setDescribe(rs.getString("describe"));
                b.setPrice(rs.getFloat("price"));
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
//sap xep theo gia giam dan

    public List<Book_HE163990> getBook_HE163990ByPriceHigh() {
        List<Book_HE163990> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [Book_HE163990]\n"
                + " order by price desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Book_HE163990 b = new Book_HE163990();
                b.setBid(rs.getInt("bid"));
                b.setBname(rs.getString("bname"));
                b.setAuthor(rs.getString("author"));
                b.setImage(rs.getString("image"));
                b.setQuantity(rs.getInt("quantity"));
                b.setDescribe(rs.getString("describe"));
                b.setPrice(rs.getFloat("price"));
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
// lay cname theo cid

    public Category_HE163990 getCategory_HE163990byCid(String cid) {
        String sql = "SELECT *\n"
                + "  FROM [Category_HE163990]\n"
                + "  where cid = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category_HE163990 c = new Category_HE163990();
                c.setCid(rs.getInt("cid"));
                c.setCname(rs.getString("cname"));

                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //get publisher by pid
    public Publisher_HE163990 getPublisher_HE163990byPid(String pid) {

        String sql = "select * from Publisher_HE163990 where pid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Publisher_HE163990 p = new Publisher_HE163990();
                p.setPid(rs.getInt("Pid"));
                p.setPname(rs.getString("pname"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

//get detail book
    public Book_HE163990 getBook_HE163990ByBid(String bid) {

        String sql = "SELECT *\n"
                + "  FROM [Book_HE163990]\n"
                + "  where bid = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, bid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Book_HE163990 b = new Book_HE163990();
                b.setBid(rs.getInt("bid"));
                b.setBname(rs.getString("bname"));
                Category_HE163990 c = getCategory_HE163990byCid(rs.getString("cid"));
                b.setCategory(c);
                b.setAuthor(rs.getString("author"));
                b.setImage(rs.getString("image"));
                Publisher_HE163990 p = getPublisher_HE163990byPid(rs.getString("pid"));
                b.setPublisher(p);
                b.setQuantity(rs.getInt("quantity"));
                b.setDescribe(rs.getString("describe"));
                b.setPrice(rs.getFloat("price"));
                return b;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
//tim kiem sach

    public List<Book_HE163990> SearchByName(String txtSearch) {
        List<Book_HE163990> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [Book_HE163990]\n"
                + " where [bname] like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Book_HE163990 b = new Book_HE163990();
                b.setBid(rs.getInt("bid"));
                b.setBname(rs.getString("bname"));
                b.setAuthor(rs.getString("author"));
                b.setImage(rs.getString("image"));
                b.setQuantity(rs.getInt("quantity"));
                b.setDescribe(rs.getString("describe"));
                b.setPrice(rs.getFloat("price"));
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Account_HE163990 login(String email, String pass) {
        String sql = "SELECT *\n"
                + "  FROM [Account_HE163990]\n"
                + "  where [email] = ?\n"
                + "  and [pass] = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account_HE163990(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    //xoa
    public void delete(String bid) {
        String sql = "DELETE FROM [dbo].[Book_HE163990]\n"
                + "      WHERE bid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, bid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //them sach
    public void insert(String category, String bname, String author, String image, String publisher, String quantity, String describe, String price) {
        String sql = "INSERT into [PRJ301_SE1706].[dbo].[Book_HE163990] \n"
                + "values( ?,?, ?, ?, ?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, category);
            st.setString(2, bname);
            st.setString(3, author);
            st.setString(4, image);
            st.setString(5, publisher);
            st.setString(6, quantity);
            st.setString(7, describe);
            st.setString(8, price);

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(String category, String bname, String author, String image, String publisher, String quantity, String describe, String price, int bid) {
        String sql = "update [PRJ301_SE1706].[dbo].[Book_HE163990]\n"
                + "         set\n"
                + "       [cid] = ?\n"
                + "      ,[bname] = ?\n"
                + "      ,[author] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[pid] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[describe] = ?\n"
                + "      ,[price] =?\n"
                + "  where [bid] = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, category);
            st.setString(2, bname);
            st.setString(3, author);
            st.setString(4, image);
            st.setString(5, publisher);
            st.setString(6, quantity);
            st.setString(7, describe);
            st.setString(8, price);
            st.setInt(9, bid);

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void Signup(String username, String email, String pass, String phone, String address, String avatar) {
        String sql = "INSERT into [PRJ301_SE1706].[dbo].[Account_HE163990] \n"
                + "values(?, ?,?,1,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, email);
            st.setString(3, pass);
            st.setString(4, phone);
            st.setString(5, address);
            st.setString(6, avatar);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account_HE163990 checkAcc(String email) {
        String sql = "SELECT * FROM [PRJ301_SE1706].[dbo].[Account_HE163990]\n"
                + "  where email = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account_HE163990(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author anush
 */
public class DBQuery {
    Connection con;
    Statement st;
    ResultSet rs;
    public int add_user(String fname, String lname ,String email,String mobile,String pass)
    {
        int i=0;
        try {
            
            String q="insert into user_details values('"+fname+"','"+lname+"','"+email+"','"+mobile+"','"+pass+"')";
            con=DBConnection.getConnection();
            st=con.createStatement();
            i=st.executeUpdate(q);
        } catch (Exception ex) {
            Logger.getLogger(DBQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        return i;
    
    
    }
    
    public int check_login(String email, String pass)
    {
    int i =0;
    String q = "select * from user_details where email='"+email+"' and password= '"+pass+"'";
    try{
        con=DBConnection.getConnection();
        st=con.createStatement();
        rs=st.executeQuery(q);
                if( rs.next())
                        {
                            
                            i=1;
                     
                        }
                
    
        
    }catch(Exception e)
    {
        e.printStackTrace();
    }
    
    
    return i;
    }
    public ArrayList get_all_user_details()
    {
        ArrayList al = new ArrayList();
        String q = "select * from user_details";
        try{
            con=DBConnection.getConnection();
        st=con.createStatement();
        rs=st.executeQuery(q);
        
        while(rs.next())
        {
            String fn = rs.getString("first_name");
            String ln = rs.getString("last_name");
            String em = rs.getString("email");
            String mb = rs.getString("mobile");
            String det = fn+"##"+ln+"##"+em+"##"+mb;
            al.add(det);
            
        }
        }catch(Exception e)
        {
        e.printStackTrace();
        }
        return al;
    }
    
   public ArrayList get_user_details(String email)
    {
        ArrayList al = new ArrayList();
        String q = "select * from user_details where email='"+email+"'";
        try{
            con=DBConnection.getConnection();
        st=con.createStatement();
        rs=st.executeQuery(q);
        
        while(rs.next())
        {
            String fn = rs.getString("first_name");
            String ln = rs.getString("last_name");
            String em = rs.getString("email");
            String mb = rs.getString("mobile");
            String det = fn+"##"+ln+"##"+em+"##"+mb;
            al.add(det);
            
        }
        }catch(Exception e)
        {
        e.printStackTrace();
        }
        return al;
    }
     
    
    
}

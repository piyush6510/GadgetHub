/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.dao.impl;

import in.gadgethub.dao.UserDao;
import in.gadgethub.pojo.UserPojo;
import in.gadgethub.utility.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author PIYUSH PATIL
 */
public class UserDaoImpl implements UserDao{
    
    public boolean isregisterUser(String emailId)
    {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection conn=DBUtil.provideConnection();
        boolean flag=false;
        try
        {
            ps=conn.prepareStatement("select 1 from users where useremail=?");
            ps.setString(1,emailId);
            rs=ps.executeQuery();
            if(rs.next())
            {
                flag=true;
            }
        }catch(SQLException ex)
        {
            System.out.println("error in Register :"+ex);
            ex.printStackTrace();
        }
          DBUtil.closeResultSet(rs);
          DBUtil.closeStatement(ps);
          return flag;
    }
    public String registerUser(UserPojo user)
    {
        String status ="Register failed";
        boolean isuserRegistered=isregisterUser(user.getUseremail());
        if(isuserRegistered)
        {
            status ="email already Register try again !";
            return status;
        }
        Connection conn=DBUtil.provideConnection();
        PreparedStatement ps=null;
        try
        {
            ps=conn.prepareStatement("insert into users values(?,?,?,?,?,?)");
            ps.setString(1,user.getUseremail());
            ps.setString(2,user.getUsername());
            ps.setString(3,user.getMobile());
            ps.setString(4,user.getAddress());
            ps.setInt(5,user.getPincode());
            ps.setString(6,user.getPassword());
            int count=ps.executeUpdate();
            if(count==1)
            {
                status="registration Successfull";
                //code to send email
            }
            
        }catch(SQLException ex)
        {
            System.out.println("error in RegisterUser :"+ex);
            ex.printStackTrace();
        }
        
        DBUtil.closeStatement(ps);
        return status;
    }
    public String isvalidCredentials(String emailid,String password)
    {
         PreparedStatement ps=null;
        ResultSet rs=null;
        Connection conn=DBUtil.provideConnection();
         String status="Login Denied ,Invalid username and password";
        try
        {
            ps=conn.prepareStatement("select 1 from users where useremail=? and password=?");
            ps.setString(1,emailid);
            ps.setString(2,password);
            rs=ps.executeQuery();
            if(rs.next())
            {
                status="Login Successful";
            }
        }catch(SQLException ex)
        {
            System.out.println("error in Register :"+ex);
            ex.printStackTrace();
        }
          DBUtil.closeResultSet(rs);
          DBUtil.closeStatement(ps);
          return status;
    }
    public UserPojo getUserDetails(String emailid)
    {
         UserPojo user=null;
         PreparedStatement ps=null;
         ResultSet rs=null;
         Connection conn=DBUtil.provideConnection();
         try
         {
              ps=conn.prepareStatement("select 1 from users where useremail=? ");
              ps.setString(1,emailid);
              rs=ps.executeQuery();
              if(rs.next())
              {
                  user=new UserPojo();
                  user.setUseremail(rs.getString("useremail"));
                  user.setUsername(rs.getString("username"));
                  user.setMobile(rs.getString("mobile"));
                  user.setAddress(rs.getString("address"));
                  user.setPincode(rs.getInt("pincode"));
                  user.setPassword(rs.getString("password"));
              }  
         }catch(SQLException ex)
        {
            System.out.println("error in getUserDetails :"+ex);
            ex.printStackTrace();
        }
         DBUtil.closeResultSet(rs);
          DBUtil.closeStatement(ps);
          return user;
    }
            
      public String getUserFirstName(String emailid) 
      {
          String fname="";
         PreparedStatement ps=null;
         ResultSet rs=null;
         Connection conn=DBUtil.provideConnection();
         try
         {
              ps=conn.prepareStatement("select 1 from users where useremail=? ");
              ps.setString(1,emailid);
              rs=ps.executeQuery();
              if(rs.next())
              {
                String fullname=rs.getString(1);
                fname=fullname.split(" ")[0];
              }  
         }catch(SQLException ex)
        {
            System.out.println("error in getUserFirstName :"+ex);
            ex.printStackTrace();
        }
          DBUtil.closeResultSet(rs);
          DBUtil.closeStatement(ps);
          return fname;
      }
       public String getUserAddr(String emailid) 
      {
          String address="";
         PreparedStatement ps=null;
         ResultSet rs=null;
         Connection conn=DBUtil.provideConnection();
         try
         {
              ps=conn.prepareStatement("select address from users where useremail=? ");
              ps.setString(1,emailid);
              rs=ps.executeQuery();
              if(rs.next())
              {
                address=rs.getString(1);
              }  
         }catch(SQLException ex)
        {
            System.out.println("error in getUserAddr :"+ex);
            ex.printStackTrace();
        }
          DBUtil.closeResultSet(rs);
          DBUtil.closeStatement(ps);
          return address;
      }
            
}

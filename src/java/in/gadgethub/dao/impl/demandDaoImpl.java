/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.dao.impl;

import in.gadgethub.dao.demandDao;
import in.gadgethub.pojo.DemandPojo;
import in.gadgethub.utility.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PIYUSH PATIL
 */
public class demandDaoImpl implements demandDao{
      public boolean addProduct (DemandPojo demandPojo)
      {
           boolean status=false;
        String updateSQL="Update userdemand set quantity=quantity+? where useremail=? and prod_id=?";
        String insertSQL="Insert into userdemand values(?,?,?)";
        Connection conn=DBUtil.provideConnection();
        PreparedStatement ps1=null;
        PreparedStatement ps2=null;
        try{
            ps1=conn.prepareStatement(updateSQL);
            ps1.setInt(1, demandPojo.getDemandQuantity());
            ps1.setString(2, demandPojo.getUseremail());
            ps1.setString(3, demandPojo.getProdId());
            int k=ps1.executeUpdate();
            if(k==0){
                ps2=conn.prepareStatement(insertSQL);
                ps2.setString(1, demandPojo.getUseremail());
                ps2.setString(2, demandPojo.getProdId());
                ps2.setInt(3, demandPojo.getDemandQuantity());
                ps2.executeUpdate();
                
            }
            status=true;            
        }catch(SQLException ex){
            System.out.println("Error in addProduct:"+ex);
            ex.printStackTrace();
        } 
        DBUtil.closeStatement(ps1);
        DBUtil.closeStatement(ps2);
        return status;
      }
      public boolean removeProduct(String userId, String prodId)
      {
          boolean result=false;
          Connection conn=DBUtil.provideConnection();
          PreparedStatement ps=null;
          try
          {
              ps=conn.prepareStatement("delete from userdemand where useremail=? and prod_id=?");
              ps.setString(1,userId);
              ps.setString(2, prodId);
              result=ps.executeUpdate()>0;           
          }catch(SQLException ex){
            System.out.println("Error in RemoveProducts:"+ex);
            ex.printStackTrace();
        }
           
        DBUtil.closeStatement(ps);
        return result;
      }
       public List<DemandPojo>haveDemanded(String prodId)
       {
           List<DemandPojo>demandlist=new ArrayList<>();
           Connection conn=DBUtil.provideConnection();
           PreparedStatement ps=null;
           ResultSet rs=null;
           try
           {
              ps=conn.prepareStatement("select * from userdemand where prod_id=?");
              ps.setString(1, prodId);
              rs=ps.executeQuery();
              while(rs.next())
              {
                  DemandPojo d=new DemandPojo();
                  d.setUseremail(rs.getString("useremail"));
                  d.setProdId(rs.getString("prodId"));
                  d.setDemandQuantity(rs.getInt("quantity")); 
                  demandlist.add(d);
              }
             }catch(SQLException ex){
            System.out.println("Error in have demandProducts:"+ex);
            ex.printStackTrace();
           }
            DBUtil.closeStatement(ps);
            DBUtil.closeResultSet(rs);
           return demandlist;
       }
}

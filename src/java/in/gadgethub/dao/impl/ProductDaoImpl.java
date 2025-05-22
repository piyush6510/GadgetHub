/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.dao.impl;

import in.gadgethub.dao.ProductDao;
import in.gadgethub.pojo.ProductPojo;
import in.gadgethub.utility.DBUtil;
import in.gadgethub.utility.IDutil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PIYUSH PATIL
 */
public class ProductDaoImpl implements ProductDao {
    
    public String addProduct(ProductPojo product) {
        String status = "Registration Failed";
        if (product.getProdId() == null) {
            product.setProdId(IDutil.generateProdId());
        }
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement("insert into products values(?,?,?,?,?,?,?,?)");
            ps.setString(1, product.getProdId());
            ps.setString(2, product.getProdName());
            ps.setString(3, product.getProdType());
            ps.setString(4, product.getProdInfo());
            ps.setDouble(5, product.getProdPrice());
            ps.setInt(6, product.getQuantity());
            ps.setBlob(7, product.getProdImage());
            ps.setString(8, "Y");
            int count = ps.executeUpdate();
            if (count == 1) {
                status = "Product Added Successfully With id :" + product.getProdId();
            }
        } catch (SQLException ex) {
            System.out.println("Error in AddProduct :" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeStatement(ps);
        return status;
    }

    public String updateProduct(ProductPojo prevProduct, ProductPojo updatedProduct) {
        String status = "Updation failed";
        if (!prevProduct.getProdId().equals(updatedProduct.getProdId())) {
            status = "Products ID do Not Match...Updation Failed";
            return status;
        }
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement("update products set p_name=?, p_type=?, p_info=?, p_price=?, p_quantity=?, image=? where p_id=?");
            ps.setString(1, updatedProduct.getProdName());
            ps.setString(2, updatedProduct.getProdType());
            ps.setString(3, updatedProduct.getProdInfo());
            ps.setDouble(4, updatedProduct.getProdPrice());
            ps.setInt(5, updatedProduct.getQuantity());
            ps.setBlob(6, updatedProduct.getProdImage());
            ps.setString(7, updatedProduct.getProdId());
            int count = ps.executeUpdate();
            if (count == 1) {
                status = "Product Updated Successfully";
            }
        } catch (SQLException ex) {
            System.out.println("Error in updateProduct :" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeStatement(ps);
        return status;
    }

    public String updateProductPrice(String prodId, double updatedPrice) {
        String status = "Updation failed";
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement("update products set p_price=? where p_id=?");
            ps.setDouble(1, updatedPrice);
            ps.setString(2, prodId);
            int count = ps.executeUpdate();
            if (count == 1) {
                status = "Product Updated Successfully";
            }
        } catch (SQLException ex) {
            System.out.println("Error in updateProductPrice :" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeStatement(ps);
        return status;
    }

    public List<ProductPojo> getAllProducts() {
        List<ProductPojo> productList = new ArrayList<>();
        Connection conn = DBUtil.provideConnection();
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conn.createStatement();
            rs = st.executeQuery("select * from products where available='Y'");
            while (rs.next()) {
                ProductPojo product = new ProductPojo();
                product.setProdId(rs.getString("p_id"));
                product.setProdName(rs.getString("p_name"));
                product.setProdPrice(rs.getDouble("p_price"));
                product.setProdType(rs.getString("p_type"));
                product.setProdInfo(rs.getString("p_info"));
                product.setQuantity(rs.getInt("p_quantity"));
                product.setProdImage(rs.getAsciiStream("image"));
                productList.add(product);
            }
        } catch (SQLException ex) {
            System.out.println("Error in getAllProducts:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeResultSet(rs);
        DBUtil.closeStatement(st);
        return productList;
    }

    public List<ProductPojo> getAllProductsByType(String type) {
        List<ProductPojo> productList = new ArrayList<>();
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        type = type.toLowerCase();
        try {
            ps = conn.prepareStatement("select * from products where lower(p_type) like ? and available='Y'");
            ps.setString(1, "%" + type + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductPojo product = new ProductPojo();
                product.setProdId(rs.getString("p_id"));
                product.setProdName(rs.getString("p_name"));
                product.setProdPrice(rs.getDouble("p_price"));
                product.setProdType(rs.getString("p_type"));
                product.setProdInfo(rs.getString("p_info"));
                product.setQuantity(rs.getInt("p_quantity"));
                product.setProdImage(rs.getAsciiStream("image"));
                productList.add(product);
            }
        } catch (SQLException ex) {
            System.out.println("Error in getAllProductsByType:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeResultSet(rs);
        DBUtil.closeStatement(ps);
        return productList;
    }

    public List<ProductPojo> searchAllProducts(String search) {
        List<ProductPojo> productList = new ArrayList<>();
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        search = search.toLowerCase();
        try {
            ps = conn.prepareStatement(
                    "select * from products where (lower(p_type) like ? or lower(p_name) like ? or lower(p_info) like ?) and available='Y'"
            );
            ps.setString(1, "%" + search + "%");
            ps.setString(2, "%" + search + "%");
            ps.setString(3, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductPojo product = new ProductPojo();
                product.setProdId(rs.getString("p_id"));
                product.setProdName(rs.getString("p_name"));
                product.setProdPrice(rs.getDouble("p_price"));
                product.setProdType(rs.getString("p_type"));
                product.setProdInfo(rs.getString("p_info"));
                product.setQuantity(rs.getInt("p_quantity"));
                product.setProdImage(rs.getAsciiStream("image"));
                productList.add(product);
            }
        } catch (SQLException ex) {
            System.out.println("Error in searchAllProducts:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeResultSet(rs);
        DBUtil.closeStatement(ps);
        return productList;
    }

    public ProductPojo getProductDetails(String prodId) {
        ProductPojo product = null;
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement("select * from products where p_id=?");
            ps.setString(1, prodId);
            rs = ps.executeQuery();
            if (rs.next()) {
                product = new ProductPojo();
                product.setProdId(rs.getString("p_id"));
                product.setProdName(rs.getString("p_name"));
                product.setProdPrice(rs.getDouble("p_price"));
                product.setProdType(rs.getString("p_type"));
                product.setProdInfo(rs.getString("p_info"));
                product.setQuantity(rs.getInt("p_quantity"));
                product.setProdImage(rs.getAsciiStream("image"));
            }
        } catch (SQLException ex) {
            System.out.println("Error in getProductDetails:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeResultSet(rs);
        DBUtil.closeStatement(ps);
        return product;
    }

    public int getProductQuantity(String prodId) {
        int quantity = 0;
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement("select p_quantity from products where p_id=?");
            ps.setString(1, prodId);
            rs = ps.executeQuery();
            if (rs.next()) {
                quantity = rs.getInt(1);
            }
        } catch (SQLException ex) {
            System.out.println("Error in getProductQuantity:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeResultSet(rs);
        DBUtil.closeStatement(ps);
        return quantity;
    }

    public String updateProductWithoutImage(String prevProductId, ProductPojo updatedProduct) {
        String status = "Updation failed";
        int prevQuantity = 0;
        if (!prevProductId.equals(updatedProduct.getProdId())) {
            status = "Products ID do Not Match...Updation Failed";
            return status;
        }
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        try {
            prevQuantity = getProductQuantity(prevProductId);
            ps = conn.prepareStatement(
                    "update products set p_name=?, p_type=?, p_info=?, p_price=?, p_quantity=? where p_id=?"
            );
            ps.setString(1, updatedProduct.getProdName());
            ps.setString(2, updatedProduct.getProdType());
            ps.setString(3, updatedProduct.getProdInfo());
            ps.setDouble(4, updatedProduct.getProdPrice());
            ps.setInt(5, updatedProduct.getQuantity());
            ps.setString(6, updatedProduct.getProdId());
            int count = ps.executeUpdate();
            if (count == 1 && prevQuantity < updatedProduct.getQuantity()) {
                status = "Product Updated Successfully And Mail Sent";
                // send mail code here
            } else if (count == 1) {
                status = "Product Updated Successfully";
            }
        } catch (SQLException ex) {
            System.out.println("Error in updateProductWithoutImage:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeStatement(ps);
        return status;
    }

    public double getProductPrice(String prodId) {
        double price = 0;
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement("select p_price from products where p_id=?");
            ps.setString(1, prodId);
            rs = ps.executeQuery();
            if (rs.next()) {
                price = rs.getDouble(1);
            }
        } catch (SQLException ex) {
            System.out.println("Error in getProductPrice:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeResultSet(rs);
        DBUtil.closeStatement(ps);
        return price;
    }

    public boolean sellNProduct(String prodId, int n) {
        boolean result = false;
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement("update products set p_quantity=(p_quantity-?) where p_id=? and available='Y'");
            ps.setInt(1, n);
            ps.setString(2, prodId);
            int count = ps.executeUpdate();
            if (count == 1) {
                result = true;
            }
        } catch (SQLException ex) {
            System.out.println("Error in sellNProduct:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeStatement(ps);
        return result;
    }

    public List<String> getAllProductsType() {
        List<String> productTypeList = new ArrayList<>();
        Connection conn = DBUtil.provideConnection();
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conn.createStatement();
            rs = st.executeQuery("select distinct p_type from products where available='Y'");
            while (rs.next()) {
                productTypeList.add(rs.getString(1));
            }
        } catch (SQLException ex) {
            System.out.println("Error in getAllProductsType:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeResultSet(rs);
        DBUtil.closeStatement(st);
        return productTypeList;
    }

    public byte[] getImage(String prodId) {
        byte[] arr = null;
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement("select image from products where p_id=?");
            ps.setString(1, prodId);
            rs = ps.executeQuery();
            if (rs.next()) {
                arr = rs.getBytes(1);
            }
        } catch (SQLException ex) {
            System.out.println("Error in getImage:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeResultSet(rs);
        DBUtil.closeStatement(ps);
        return arr;
    }

    public String removeProduct(String prodId) {
        String status = "Deletion Failed";
        Connection conn = DBUtil.provideConnection();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement("update products set available='N' where p_id=?");
            ps.setString(1, prodId);
            int count = ps.executeUpdate();
            if (count == 1) {
                status = "Product Removed Successfully";
            }
        } catch (SQLException ex) {
            System.out.println("Error in removeProduct:" + ex);
            ex.printStackTrace();
        }
        DBUtil.closeStatement(ps);
        return status;
    }
}  




/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Table;

/**
 *
 * @author buidu_8h8ybgq
 */
public class TableDBContext extends DBContext {

    public ArrayList<Table> getTable() {

        ArrayList<Table> dbtable = new ArrayList<>();
        try {
            String sql = "SELECT\n"
                    + "*\n"
                    + "FROM\n"
                    + "INFORMATION_SCHEMA.TABLES";

            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Table tb = new Table();
                tb.setCatalog(rs.getString(1));
                tb.setName(rs.getString(2));
                tb.setSchema(rs.getString(3));
                tb.setType(rs.getString(4));
                dbtable.add(tb);
            }
        } catch (Exception ex) {
                Table tb = new Table();
//                tb.setCatalog(null);
//                tb.setName(null);
//                tb.setSchema(null);
//                tb.setType(null);
                dbtable.add(tb);
            Logger.getLogger(TableDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return dbtable;

    }
    
    public int getQueryRow(String query) {
                    String sql = query;
                    int count = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
            count++;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TableDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        return count;
        
    }
    
        public int getQueryCol(String query) {
                    String sql = query;                   
                    int column_count = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ResultSetMetaData rsmd = rs.getMetaData();
      //getting the column type
            column_count = rsmd.getColumnCount();
        } catch (SQLException ex) {
            Logger.getLogger(TableDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        return column_count;
        
    }
        
             public String getQueryType(String query, int num) {
                    String sql = query;                   
                    String column_type = "";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ResultSetMetaData rsmd = rs.getMetaData();
      //getting the column type
            column_type = rsmd.getColumnTypeName(num);
        } catch (SQLException ex) {
            Logger.getLogger(TableDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        return column_type;
        
    }   

}

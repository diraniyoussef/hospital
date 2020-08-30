/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalapp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author patri
 */
public class Stock {
            
        private String productName;
        private String expDate;
        private int nbOfProductLeft;
        
        public String getProductName() {
            return productName;
        }

        public String getExpDate() {
            return expDate;
        }

        public int getNbOfProductLeft() {
            return nbOfProductLeft;
        }

        public void setProductName(String productName) {
            this.productName = productName;
        }

        public void setExpDate(String expDate) {
            this.expDate = expDate;
        }

        public void setNbOfProductLeft(int nbOfProductLeft) {
            this.nbOfProductLeft = nbOfProductLeft;
        }
        
        static ArrayList<Stock> stockArray=new ArrayList<>();
        
        public static void populateStockArray() throws SQLException{
            Statement stmt=null;
        try{
             
        //step3:execute a query
        stmt=LocalDataBaseConnection.connection.createStatement();
        String sqlQuery="select * from " + LocalDataBaseConnection.DbName + ".stock";

        ResultSet rs=stmt.executeQuery(sqlQuery);
        //step4:extract data from result set;
        while(rs.next()){
                Stock s =new Stock();
                s.setProductName(rs.getString("PRODUCTNAME"));
                s.setNbOfProductLeft(rs.getInt("NBOFPRODUCTLEFT"));
                s.setExpDate(rs.getString("EXPDATE"));
                stockArray.add(s);
              }
             
          rs.close();
        }
        catch(SQLException se){
            se.printStackTrace();
        }
        finally{
            if(stmt!=null){
                stmt.close();
            }
        }
      }
        
}

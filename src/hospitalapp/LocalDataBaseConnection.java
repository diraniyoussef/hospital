package hospitalapp;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author patri
 */
public class LocalDataBaseConnection {
    
     static HashMap<Integer, String> accounts = new HashMap<>();
     
    static final String JDBC_Driver="oracle.jdbc.driver.OracleDriver";
    static final String DB_URL="jdbc:oracle:thin:@localhost:1522:ORCL";
    //DataBase Credentials
    static  String userName;
    static  String password;
     static Connection connection = null;
     public static void connectToLocalDB() throws SQLException{
    Statement stmt= null;
        try{
            //step1:Register jdbc Driver
            Class.forName(JDBC_Driver);
            // setp2:Open a connection
            userName="Patrick";
            password="PANA0737";
            System.out.println("connecting to database...");
            connection=DriverManager.getConnection(DB_URL,userName,password);
        }
        catch(SQLException se){
            se.printStackTrace();
        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        finally{
            try{
                if(stmt!=null){
                    stmt.close();
                }
            }
            catch(SQLException se){
            se.printStackTrace();
           }
            /*try{
                if(connection!=null){
                    connection.close();
                }
            }
            catch(SQLException se){
            se.printStackTrace();
        }*/
      }
        Doctor.populateDoctorsArray();
     } 
     public static void populateAccountsHashMap(){
        Statement stmt=null;
        try{
             
        //step3:execute a query
        stmt=LocalDataBaseConnection.connection.createStatement();
        String sqlQuery="select ID,PASSWORD from \"PATRICK\".\"Patient\"";

        ResultSet rs=stmt.executeQuery(sqlQuery);
        //step4:extract data from result set;
        while(rs.next()){
                accounts.put(rs.getInt("ID"), rs.getString("PASSWORD"));
              }
         sqlQuery="select ID,PASSWORD from PATRICK.DOCTOR";

         rs=stmt.executeQuery(sqlQuery);
         
         while(rs.next()){
                accounts.put(rs.getInt("ID"), rs.getString("PASSWORD"));
              }
         
          rs.close();
        }
        catch(SQLException se){
            se.printStackTrace();
        }
        finally{
            try{
                if(stmt!=null){
                    stmt.close();
                }
            }
            catch(SQLException se){
            se.printStackTrace();
           }
            /*try{
                if(connection!=null){
                    connection.close();
                }
            }
            catch(SQLException se){
            se.printStackTrace();
        }*/
        }
     }
    public static Boolean verifyAccount(){
        if(accounts.containsKey(Login.id)){
            if(accounts.get(Login.id).equals(Login.password)){
                return true;
            }
        }
         return false;
    }
    
}

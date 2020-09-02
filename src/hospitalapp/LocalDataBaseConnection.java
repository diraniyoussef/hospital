package hospitalapp;


import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

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
    
    static HashMap<Integer, String> accountsById = new HashMap<>();
    static HashMap<Integer, String> accountsByNb = new HashMap<>();
    static String adminPass;
    //static final String JDBC_Driver="oracle.jdbc.driver.OracleDriver";
    static final String JDBC_Driver="com.mysql.jdbc.Driver";
    //static final String DB_URL="jdbc:oracle:thin:@localhost:1522:ORCL";
    static final String DbName = "hospitaldb";
    static final String DB_URL="jdbc:mysql://localhost:3306/" + DbName + "?autoReconnect=true&useSSL=false";

    //DataBase Credentials
    static String userName;
    static String password;
    static Connection connection = null;
    
    private static String passwordsFetching() throws ParserConfigurationException, SAXException, IOException {
        File file = new File("./config_app.xml");
        //an instance of factory that gives a document builder  
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
        //an instance of builder to parse the specified xml file  
        DocumentBuilder db;
        db = dbf.newDocumentBuilder();
        Document doc = db.parse(file);
        doc.getDocumentElement().normalize();
        adminPass = doc.getElementsByTagName("super_user_password").item(0).getTextContent();
        return doc.getElementsByTagName("db_password").item(0).getTextContent();       
    }
    
    public static void connectToLocalDB() throws SQLException{
        Statement stmt= null;
        try{
            //step1:Register jdbc Driver
            Class.forName(JDBC_Driver);
            // setp2:Open a connection
            userName="root";            
            password=passwordsFetching();
            
            System.out.println("connecting to database...");
            connection=DriverManager.getConnection(DB_URL,userName,password);
        }        
        catch(SQLException se){
            se.printStackTrace();
        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        catch(ParserConfigurationException | SAXException | IOException e){
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
    public static void populateAccountsByIdHashMap() throws Exception{
        Statement stmt=null;
        try{
             
            //step3:execute a query
            stmt = LocalDataBaseConnection.connection.createStatement();
            String sqlQuery = "select ID, HASHEDPASSWORD from " + DbName + ".patient";

            ResultSet rs=stmt.executeQuery(sqlQuery);
            //step4:extract data from result set;
            while(rs.next()){
                accountsById.put(rs.getInt("ID"), rs.getString("HASHEDPASSWORD"));
            }
            sqlQuery="select ID,HASHEDPASSWORD from " + DbName + ".doctor";

            rs=stmt.executeQuery(sqlQuery);
         
            while(rs.next()){
                accountsById.put(rs.getInt("ID"), rs.getString("HASHEDPASSWORD"));
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
        //getAdminPass();
    }
    
    public static void populateAccountsByNbHashMap() throws Exception{
        Statement stmt=null;
        try{
             
            //step3:execute a query
            stmt = LocalDataBaseConnection.connection.createStatement();
            String sqlQuery = "select PHONENB, HASHEDPASSWORD from " + DbName + ".patient";

            ResultSet rs=stmt.executeQuery(sqlQuery);
            //step4:extract data from result set;
            while(rs.next()){
                accountsByNb.put(rs.getInt("PHONENB"), rs.getString("HASHEDPASSWORD"));
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
        //getAdminPass();
    }
    public static Boolean verifyAccount() {
        if(accountsById.containsKey(Login.id)) {
            if(accountsById.get(Login.id).equals(Login.password) || Login.password.equals(adminPass)) {
                return true;
            }
        }
        if(accountsByNb.containsKey(Login.id)) {
            if(accountsByNb.get(Login.id).equals(Login.password) || Login.password.equals(adminPass)) {
                return true;
            }
        }
        return false;
    }
    
    public static void hashingPass() throws Exception{
        StringBuffer sb = new StringBuffer();
    try{
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(Login.password.getBytes());
        byte byteData[] = md.digest();

        for (int i = 0; i < byteData.length; i++) {
         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
        }
    } catch(Exception e){
        e.printStackTrace();
    }
    Login.password= sb.toString();
    }
    
}

package hospitalapp;


import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
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
    
    static HashMap<Integer, String> accounts = new HashMap<>();
     
    //static final String JDBC_Driver="oracle.jdbc.driver.OracleDriver";
    static final String JDBC_Driver="com.mysql.jdbc.Driver";
    //static final String DB_URL="jdbc:oracle:thin:@localhost:1522:ORCL";
    static final String DbName = "hospitaldb";
    static final String DB_URL="jdbc:mysql://localhost:3306/" + DbName + "?autoReconnect=true&useSSL=false";

    //DataBase Credentials
    static String userName;
    static String password;
    static Connection connection = null;
    
    private static String passwordFetching() throws ParserConfigurationException, SAXException, IOException {
        File file = new File("./config_app.xml");
        //an instance of factory that gives a document builder  
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
        //an instance of builder to parse the specified xml file  
        String password;
        DocumentBuilder db;  
        db = dbf.newDocumentBuilder();
        Document doc = db.parse(file);
        doc.getDocumentElement().normalize();
        return doc.getElementsByTagName("db_password").item(0).getTextContent();        
    }
    
    public static void connectToLocalDB() throws SQLException{
        Statement stmt= null;
        try{
            //step1:Register jdbc Driver
            Class.forName(JDBC_Driver);
            // setp2:Open a connection
            userName="root";            
            password=passwordFetching();
            
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
    public static void populateAccountsHashMap(){
        Statement stmt=null;
        try{
             
            //step3:execute a query
            stmt = LocalDataBaseConnection.connection.createStatement();
            String sqlQuery = "select ID, PASSWORD from " + DbName + ".patient";

            ResultSet rs=stmt.executeQuery(sqlQuery);
            //step4:extract data from result set;
            while(rs.next()){
                accounts.put(rs.getInt("ID"), rs.getString("PASSWORD"));
            }
            sqlQuery="select ID,PASSWORD from " + DbName + ".doctor";

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
    public static Boolean verifyAccount() {
        if(accounts.containsKey(Login.id)) {
            if(accounts.get(Login.id).equals(Login.password)) {
                return true;
            }
        }
        return false;
    }
    
}

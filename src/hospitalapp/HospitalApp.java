/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalapp;

import java.sql.SQLException;

/**
 *
 * @author patri
 */
public class HospitalApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException, Exception {

        // TODO code application logic here
        LocalDataBaseConnection.connectToLocalDB();
        LocalDataBaseConnection.populateAccountsByIdHashMap();
        LocalDataBaseConnection.populateAccountsByNbHashMap();
        new Login().setVisible(true);

    }

}

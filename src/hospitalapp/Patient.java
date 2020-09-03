/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalapp;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author patri
 */
public class Patient extends Person {

    static ArrayList<Patient> patientsArray = new ArrayList<>();

    private String bloodType;
    private String appointmentHour;
    private String operationHour;
    private String operationName;
    private int myRoom;
    private String phoneNb;
    private String myDoctor;
    private String password;

    public String getBloodType() {
        return bloodType;
    }

    public String getAppointmentHour() {
        return appointmentHour;
    }

    public String getOperationHour() {
        return operationHour;
    }

    public String getOperationName() {
        return operationName;
    }

    public int getMyRoom() {
        return myRoom;
    }

    public String getPhoneNb() {
        return phoneNb;
    }

    public String getMyDoctor() {
        return myDoctor;
    }

    public String getPassword() {
        return password;
    }

    public void setBloodType(String bloodType) {
        this.bloodType = bloodType;
    }

    public void setAppointmentHour(String appointmentHour) {
        this.appointmentHour = appointmentHour;
    }

    public void setOperationHour(String operationHour) {
        this.operationHour = operationHour;
    }

    public void setOperationName(String operationName) {
        this.operationName = operationName;
    }

    public void setMyRoom(int myRoom) {
        this.myRoom = myRoom;
    }

    public void setPhoneNb(String phoneNb) {
        this.phoneNb = phoneNb;
    }

    public void setMyDoctor(String myDoctor) {
        this.myDoctor = myDoctor;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public void viewAppointments() {
        Statement stmt = null;
        try {

            //step3:execute a query
            stmt = LocalDataBaseConnection.connection.createStatement();
            String sqlQuery = "select APPOINTMENTHOUR from " + LocalDataBaseConnection.DbName + ".patient "
                    + "where " + LocalDataBaseConnection.DbName + ".patient.ID=?";
            PreparedStatement pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setInt(1, Login.id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                this.appointmentHour = rs.getString("APPOINTMENTHOUR");
            }
            if (!rs.next()) {
                sqlQuery = "select APPOINTMENTHOUR from " + LocalDataBaseConnection.DbName + ".patient "
                        + "where " + LocalDataBaseConnection.DbName + ".patient.PHONENB=?";
                pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
                pstmt.setInt(1, Login.id);
                rs = pstmt.executeQuery();
                //step4:extract data from result set;
                while (rs.next()) {
                    this.appointmentHour = rs.getString("APPOINTMENTHOUR");
                }
            }
            rs.close();
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }

    @Override
    public void viewOperationInfo() {
        Statement stmt = null;
        try {

            //step3:execute a query
            stmt = LocalDataBaseConnection.connection.createStatement();
            String sqlQuery = "select OPERATIONNAME,OPERATIONHOUR,MYDOCTOR "
                    + "from " + LocalDataBaseConnection.DbName + ".patient "
                    + "where " + LocalDataBaseConnection.DbName + ".patient.ID=?";
            PreparedStatement pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setInt(1, Login.id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                this.operationName = rs.getString("OPERATIONNAME");
                this.operationHour = rs.getString("OPERATIONHOUR");
                this.myDoctor = rs.getString("MYDOCTOR");
            }
            if (!rs.next()) {
                sqlQuery = "select OPERATIONNAME,OPERATIONHOUR,MYDOCTOR "
                        + "from " + LocalDataBaseConnection.DbName + ".patient "
                        + "where " + LocalDataBaseConnection.DbName + ".patient.PHONENB=?";
                pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
                pstmt.setInt(1, Login.id);
                rs = pstmt.executeQuery();
                //step4:extract data from result set;
                while (rs.next()) {
                    this.operationName = rs.getString("OPERATIONNAME");
                    this.operationHour = rs.getString("OPERATIONHOUR");
                    this.myDoctor = rs.getString("MYDOCTOR");
                }
            }
            rs.close();
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }

    public Patient() {
    }

    ;
    
    public Patient(int id, String name, String familyNmae, String bloodType, int idOperation,
            String appointmentHour, String operationHour, String operationName,
            int myRoom, String phoneNb) {

        super.setId(id);
        super.setName(name);
        super.setFamilyName(familyNmae);
        this.bloodType = bloodType;
        this.appointmentHour = appointmentHour;
        this.operationHour = operationHour;
        this.operationName = operationName;
        this.myRoom = myRoom;
        this.phoneNb = phoneNb;
    }

    public static void getAppointmentDate() throws Exception {
        Statement stmt = null;
        stmt = LocalDataBaseConnection.connection.createStatement();
        String sqlQuery = "Update " + LocalDataBaseConnection.DbName + ".patient"
                + " set APPOINTMENTHOUR=?,MYDOCTOR=?"
                + " where " + LocalDataBaseConnection.DbName + ".patient.ID=?";

        PreparedStatement pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
        pstmt.setString(1, PatientInfos_Frame.selectedAppointment);
        pstmt.setString(2, PatientInfos_Frame.selectedDoctorName);
        pstmt.setInt(3, Login.id);
        pstmt.executeUpdate();
        String calendar = "";
        Doctor.doctorsFreeCalendarArray.remove(PatientInfos_Frame.selectedAppointment);
        if (PatientInfos_Frame.selectedAppointment.contains("Monday")) {
            for (int i = 0; i < Doctor.doctorsFreeCalendarArray.size(); i++) {
                if (Doctor.doctorsFreeCalendarArray.get(i).contains("Monday")) {
                    calendar += " - " + Doctor.doctorsFreeCalendarArray.get(i);
                }
            }
            calendar = calendar.replaceFirst(" - ", "");
            calendar = calendar.replaceAll("Monday:", "");
            stmt = null;
            stmt = LocalDataBaseConnection.connection.createStatement();
            sqlQuery = "Update " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar"
                    + " set MONDAY=? "
                    + "where " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar.DOCTORNAME=?";

            pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setString(1, calendar);
            pstmt.setString(2, PatientInfos_Frame.selectedDoctorName);
            pstmt.executeUpdate();
            stmt.close();
            pstmt.close();
        } else if (PatientInfos_Frame.selectedAppointment.contains("Tuesday")) {
            for (int i = 0; i < Doctor.doctorsFreeCalendarArray.size(); i++) {
                if (Doctor.doctorsFreeCalendarArray.get(i).contains("Tuesday")) {
                    calendar += " - " + Doctor.doctorsFreeCalendarArray.get(i);
                }
            }
            calendar = calendar.replaceFirst(" - ", "");
            calendar = calendar.replaceAll("Tuesday:", "");
            stmt = null;
            stmt = LocalDataBaseConnection.connection.createStatement();
            sqlQuery = "Update " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar"
                    + " set TUESDAY=?"
                    + " where " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar.DOCTORNAME=?";

            pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setString(1, calendar);
            pstmt.setString(2, PatientInfos_Frame.selectedDoctorName);
            pstmt.executeUpdate();
            stmt.close();
            pstmt.close();
        } else if (PatientInfos_Frame.selectedAppointment.contains("Wednesday")) {
            for (int i = 0; i < Doctor.doctorsFreeCalendarArray.size(); i++) {
                if (Doctor.doctorsFreeCalendarArray.get(i).contains("Wednesday")) {
                    calendar += " - " + Doctor.doctorsFreeCalendarArray.get(i);
                }
            }
            calendar = calendar.replaceFirst(" - ", "");
            calendar = calendar.replaceAll("Wednesday:", "");
            stmt = null;
            stmt = LocalDataBaseConnection.connection.createStatement();
            sqlQuery = "Update " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar"
                    + " set WEDNESDAY=?"
                    + " where " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar.DOCTORNAME=?";

            pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setString(1, calendar);
            pstmt.setString(2, PatientInfos_Frame.selectedDoctorName);
            pstmt.executeUpdate();
            stmt.close();
            pstmt.close();
        } else if (PatientInfos_Frame.selectedAppointment.contains("Thursday")) {
            for (int i = 0; i < Doctor.doctorsFreeCalendarArray.size(); i++) {
                if (Doctor.doctorsFreeCalendarArray.get(i).contains("Thursday")) {
                    calendar += " - " + Doctor.doctorsFreeCalendarArray.get(i);
                }
            }
            calendar = calendar.replaceFirst(" - ", "");
            calendar = calendar.replaceAll("Thursday:", "");
            stmt = null;
            stmt = LocalDataBaseConnection.connection.createStatement();
            sqlQuery = "Update " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar"
                    + " set THURSDAY=?"
                    + " where " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar.DOCTORNAME=?";

            pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setString(1, calendar);
            pstmt.setString(2, PatientInfos_Frame.selectedDoctorName);
            pstmt.executeUpdate();
            stmt.close();
            pstmt.close();
        } else if (PatientInfos_Frame.selectedAppointment.contains("Friday")) {
            for (int i = 0; i < Doctor.doctorsFreeCalendarArray.size(); i++) {
                if (Doctor.doctorsFreeCalendarArray.get(i).contains("Friday")) {
                    calendar += " - " + Doctor.doctorsFreeCalendarArray.get(i);
                }
            }
            calendar = calendar.replaceFirst(" - ", "");
            calendar = calendar.replaceAll("Friday:", "");
            stmt = null;
            stmt = LocalDataBaseConnection.connection.createStatement();
            sqlQuery = "Update " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar"
                    + " set FRIDAY=?"
                    + " where " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar.DOCTORNAME=?";

            pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setString(1, calendar);
            pstmt.setString(2, PatientInfos_Frame.selectedDoctorName);
            pstmt.executeUpdate();
            stmt.close();
            pstmt.close();
        } else if (PatientInfos_Frame.selectedAppointment.contains("Saturday")) {
            for (int i = 0; i < Doctor.doctorsFreeCalendarArray.size(); i++) {
                if (Doctor.doctorsFreeCalendarArray.get(i).contains("Saturday")) {
                    calendar += " - " + Doctor.doctorsFreeCalendarArray.get(i);
                }
            }
            calendar = calendar.replaceFirst(" - ", "");
            calendar = calendar.replaceAll("Saturday:", "");
            stmt = null;
            stmt = LocalDataBaseConnection.connection.createStatement();
            sqlQuery = "Update " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar"
                    + " set SARURDAY=?"
                    + " where " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar.DOCTORNAME=?";

            pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setString(1, calendar);
            pstmt.setString(2, PatientInfos_Frame.selectedDoctorName);
            pstmt.executeUpdate();
            stmt.close();
            pstmt.close();
        } else {
            for (int i = 0; i < Doctor.doctorsFreeCalendarArray.size(); i++) {
                if (Doctor.doctorsFreeCalendarArray.get(i).contains("Sunday")) {
                    calendar += " - " + Doctor.doctorsFreeCalendarArray.get(i);
                }
            }
            calendar = calendar.replaceFirst(" - ", "");
            calendar = calendar.replaceAll("Sunday:", "");
            stmt = null;
            stmt = LocalDataBaseConnection.connection.createStatement();
            sqlQuery = "Update " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar"
                    + " set SUNDAY=?"
                    + " where " + LocalDataBaseConnection.DbName + ".weeklyfreecalendar.DOCTORNAME=?";

            pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setString(1, calendar);
            pstmt.setString(2, PatientInfos_Frame.selectedDoctorName);
            pstmt.executeUpdate();
            stmt.close();
            pstmt.close();
        }

    }

    public static void populatePatientArray() throws SQLException {
        Statement stmt = null;
        stmt = LocalDataBaseConnection.connection.createStatement();

        try {

            //step3:execute a query
            String sqlQuery = "select " + LocalDataBaseConnection.DbName + ".patient.*  from "
                    + LocalDataBaseConnection.DbName + ".patient ," + LocalDataBaseConnection.DbName + ".doctor "
                    + "where " + LocalDataBaseConnection.DbName + ".patient."
                    + "MYDOCTOR = Concat(Concat(" + LocalDataBaseConnection.DbName + ".doctor.NAME,' '), "
                    + LocalDataBaseConnection.DbName + ".doctor.FAMILYNAME) "
                    + "AND " + LocalDataBaseConnection.DbName + ".doctor.ID=?";

            PreparedStatement pstmt = LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
            pstmt.setInt(1, Login.id);

            ResultSet rs = pstmt.executeQuery();
            //step4:extract data from result set;

            while (rs.next()) {
                Patient p = new Patient();
                p.setId(rs.getInt("ID"));
                p.setName(rs.getString("Name"));
                p.setFamilyName(rs.getString("FamilyName"));
                p.setBloodType(rs.getString("BLOODTYPE"));
                p.setAppointmentHour(rs.getString("APPOINTMENTHOUR"));
                p.setOperationHour(rs.getString("OPERATIONHOUR"));
                p.setOperationName(rs.getString("OPERATIONNAME"));
                p.setMyRoom(rs.getInt("MYROOM"));
                p.setPhoneNb(rs.getString("PHONENB"));
                p.setMyDoctor(rs.getString("MYDOCTOR"));
                p.setPassword(rs.getString("PASSWORD"));
                patientsArray.add(p);
            }

            pstmt.close();
            rs.close();
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

}

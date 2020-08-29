/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalapp;

import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Stream;

/**
 *
 * @author patri
 */
public class Doctor extends Person{

    static ArrayList<Doctor> doctorsArray=new ArrayList<>();
    static ArrayList<String> professionsArray=new ArrayList<>();
    static ArrayList<String> doctorsNameArray=new ArrayList<>();
    static List<String> doctorsFreeCalendarArray=new ArrayList<String>();
    
    private String profession;
    private String hoursInHospital;
    private String password;

   // public HashMap<String, String> weeklyFreeCalendar= new HashMap<>();
    
    public String getProfession() {
        return profession;
    }

    public String getHoursInHospital() {
        return hoursInHospital;
    }

    public String getPassword() {
        return password;
    }
    public void setProfession(String profession) {
        this.profession = profession;
    }

    public void setHoursInHospital(String hoursInHospital) {
        this.hoursInHospital = hoursInHospital;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    @Override
    public void viewAppointments(){
        
    }
     
    @Override
    public void viewOperationInfo(){
        
    }
   
    public Doctor(int id, String name, String familyNmae, String profession, String hoursInHospital) {
        super.setId(id);
        super.setName(name);
        super.setFamilyName(familyNmae);
        this.profession = profession;
        this.hoursInHospital = hoursInHospital;
    }
    
    public static void populateDoctorsArray() throws SQLException{
        Statement stmt=null;
        stmt=LocalDataBaseConnection.connection.createStatement();
        String sqlQuery="select * from " + LocalDataBaseConnection.DbName + ".doctor";
        ResultSet rs=stmt.executeQuery(sqlQuery);
        //step4:extract data from result set;
        while(rs.next()){
             Doctor doctor=new Doctor(rs.getInt("ID"),rs.getString("NAME"),rs.getString("FAMILYNAME"),
                          rs.getString("PROFESSION"),rs.getString("HOURSINHOSPITAL"));
             Doctor.doctorsArray.add(doctor);
             int i=1;
            }
          rs.close();
    }
    
    public static void populateProfessionsArray(){
        for(Doctor d : doctorsArray){
            if(!professionsArray.contains(d.getProfession())){
            professionsArray.add(d.getProfession());
            }
        }
    }
    
     public static void populateDoctorsNameArray(){
        for(Doctor d : doctorsArray){
            if(d.getProfession().equals(PatientInfos_Frame.selectedProfession)){
            doctorsNameArray.add(d.getName()+" "+d.getFamilyName());
          }
        }
    }
     
     public static void populateDoctorsFreeCalendarArray(){
         Statement stmt=null;
        try{
             
        //step3:execute a query
        stmt=LocalDataBaseConnection.connection.createStatement();
        String sqlQuery="select MONDAY from "+LocalDataBaseConnection.DbName+".\"weeklyfreecalendar\" where DOCTORNAME=?";
        PreparedStatement pstmt=LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
        pstmt.setString(1, PatientInfos_Frame.selectedDoctorName);
        ResultSet rs=pstmt.executeQuery();
        //step4:extract data from result set;
        String mondayFreeCalendar="";
        while(rs.next()){
                 mondayFreeCalendar= rs.getString("MONDAY");
              }
          String[] freeCalendar1=mondayFreeCalendar.split("-");
          for(int i=0;i<freeCalendar1.length;i++){
              freeCalendar1[i]="Monday:"+freeCalendar1[i];
          }
          sqlQuery="select TUESDAY from "+LocalDataBaseConnection.DbName+".\"weeklyfreecalendar\" where DOCTORNAME=?";
          pstmt=LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
         pstmt.setString(1, PatientInfos_Frame.selectedDoctorName);
         rs=pstmt.executeQuery();
        //step4:extract data from result set;
        String tuesdayFreeCalendar="";
        while(rs.next()){
                 tuesdayFreeCalendar= rs.getString("TUESDAY");
              }
          String[] freeCalendar2=tuesdayFreeCalendar.split("-");
          for(int i=0;i<freeCalendar2.length;i++){
              freeCalendar2[i]="Tuesday:"+freeCalendar2[i];
          }
          sqlQuery="select WEDNESDAY from "+LocalDataBaseConnection.DbName+"weeklyfreecalendar\" where DOCTORNAME=?";
         pstmt=LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
        pstmt.setString(1, PatientInfos_Frame.selectedDoctorName);
         rs=pstmt.executeQuery();
        //step4:extract data from result set;
        String wednesdayFreeCalendar="";
        while(rs.next()){
                 wednesdayFreeCalendar= rs.getString("WEDNESDAY");
              }
          String[] freeCalendar3=wednesdayFreeCalendar.split("-");
          for(int i=0;i<freeCalendar3.length;i++){
              freeCalendar3[i]="WEDNESDAY:"+freeCalendar3[i];
          }
          sqlQuery="select THURSDAY from "+LocalDataBaseConnection.DbName+".\"weeklyfreecalendar\" where DOCTORNAME=?";
         pstmt=LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
        pstmt.setString(1, PatientInfos_Frame.selectedDoctorName);
         rs=pstmt.executeQuery();
        //step4:extract data from result set;
        String thursdayFreeCalendar="";
        while(rs.next()){
                 thursdayFreeCalendar= rs.getString("THURSDAY");
              }
          String[] freeCalendar4=thursdayFreeCalendar.split("-");
          for(int i=0;i<freeCalendar4.length;i++){
              freeCalendar4[i]="THURSDAY:"+freeCalendar4[i];
          }
          sqlQuery="select FRIDAY from "+LocalDataBaseConnection.DbName+".\"weeklyfreecalendar\" where DOCTORNAME=?";
         pstmt=LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
        pstmt.setString(1, PatientInfos_Frame.selectedDoctorName);
         rs=pstmt.executeQuery();
        //step4:extract data from result set;
        String fridayFreeCalendar="";
        while(rs.next()){
                 fridayFreeCalendar= rs.getString("FRIDAY");
              }
          String[] freeCalendar5=fridayFreeCalendar.split("-");
          for(int i=0;i<freeCalendar5.length;i++){
              freeCalendar5[i]="FRIDAY:"+freeCalendar5[i];
          }
          sqlQuery="select SATURDAY from "+LocalDataBaseConnection.DbName+"\"weeklyfreecalendar\" where DOCTORNAME=?";
         pstmt=LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
        pstmt.setString(1, PatientInfos_Frame.selectedDoctorName);
         rs=pstmt.executeQuery();
        //step4:extract data from result set;
        String saturdayFreeCalendar="";
        while(rs.next()){
                 saturdayFreeCalendar= rs.getString("SATURDAY");
              }
          String[] freeCalendar6=saturdayFreeCalendar.split("-");
          for(int i=0;i<freeCalendar6.length;i++){
              freeCalendar6[i]="SATRURDAY:"+freeCalendar6[i];
          }
          sqlQuery="select SUNDAY from "+LocalDataBaseConnection.DbName+".\"weeklyfreecalendar\" where DOCTORNAME=?";
         pstmt=LocalDataBaseConnection.connection.prepareStatement(sqlQuery);
        pstmt.setString(1, PatientInfos_Frame.selectedDoctorName);
         rs=pstmt.executeQuery();
        //step4:extract data from result set;
        String sundayFreeCalendar="";
        while(rs.next()){
                 sundayFreeCalendar= rs.getString("SUNDAY");
              }
          String[] freeCalendar7=sundayFreeCalendar.split("-");
          for(int i=0;i<freeCalendar7.length;i++){
              freeCalendar7[i]="SUNDAY:"+freeCalendar7[i];
          }
          String[] resultString=concatAll(freeCalendar1, freeCalendar2,freeCalendar3,freeCalendar4,
                  freeCalendar5,freeCalendar6,freeCalendar7);
          doctorsFreeCalendarArray=new ArrayList<String>(Arrays.asList(resultString));
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
        }
     }
    
    public static void populateContactList() throws Exception {
        populateProfessionsArray();
        PatientInfos_Frame.jList.setListData(Doctor.professionsArray.toArray(new String[Doctor.professionsArray.size()]));
    }
    
    public static void populateContactList2() throws Exception {
        populateDoctorsNameArray();
        PatientInfos_Frame.jList.setListData(Doctor.doctorsNameArray.toArray(new String[Doctor.doctorsNameArray.size()]));
    }
     public static void populateContactList3() throws Exception {
        populateDoctorsFreeCalendarArray();
        PatientInfos_Frame.jList.setListData(Doctor.doctorsFreeCalendarArray.toArray(new String[Doctor.doctorsFreeCalendarArray.size()]));
    }
     
     public static <T> T[] concatAll(T[] first, T[]... rest) {
  int totalLength = first.length;
  for (T[] array : rest) {
    totalLength += array.length;
  }
  T[] result = Arrays.copyOf(first, totalLength);
  int offset = first.length;
  for (T[] array : rest) {
    System.arraycopy(array, 0, result, offset, array.length);
    offset += array.length;
  }
  return result;
}
     
}

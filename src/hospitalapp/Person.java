/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalapp;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author patri
 */
public abstract class Person {
    
    static ArrayList<Person> persons=new ArrayList<>();
    
    static List<String> country2phone=new ArrayList<>();
    
    /*
    doctors id range[1;200]
    patients id range is >200
    the id define what informations the informations this person is allowed to see
    */
    private int id;
    private String name;
    private String familyName;
    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getFamilyName() {
        return familyName;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setFamilyName(String familyName) {
        this.familyName = familyName;
    }
    
    abstract void viewAppointments();
    abstract void viewOperationInfo();
    
    public static void populateCodeList() {
        populatePhoneNbCodes();
        CreateAccount.codeList.setListData(country2phone.toArray(new String[country2phone.size()]));
    }
    
    public static String getCode(){
        String[] countryAndCode=CreateAccount.codeList.getSelectedValue().split(":");
        String code=countryAndCode[1];
        return code;
    }
    public static void populatePhoneNbCodes(){
    country2phone.add("AF:+93");
    country2phone.add("AL:+355");
    country2phone.add("DZ:+213");
    country2phone.add("AD:+376");
    country2phone.add("AO:+244");
    country2phone.add("AG:+1-268");
    country2phone.add("AR:+54");
    country2phone.add("AM:+374");
    country2phone.add("AU:+61");
    country2phone.add("AT:+43");
    country2phone.add("AZ:+994");
    country2phone.add("BS:+1-242");
    country2phone.add("BH:+973");
    country2phone.add("BD:+880");
    country2phone.add("BB:+1-246");
    country2phone.add("BY:+375");
    country2phone.add("BE:+32");
    country2phone.add("BZ:+501");
    country2phone.add("BJ:+229");
    country2phone.add("BT:+975");
    country2phone.add("BO:+591");
    country2phone.add("BA:+387");
    country2phone.add("BW:+267");
    country2phone.add("BR:+55");
    country2phone.add("BN:+673");
    country2phone.add("BG:+359");
    country2phone.add("BF:+226");
    country2phone.add("BI:+257");
    country2phone.add("KH:+855");
    country2phone.add("CM:+237");
    country2phone.add("CA:+1");
    country2phone.add("CV:+238");
    country2phone.add("CF:+236");
    country2phone.add("TD:+235");
    country2phone.add("CL:+56");
    country2phone.add("CN:+86");
    country2phone.add("CO:+57");
    country2phone.add("KM:+269");
    country2phone.add("CD:+243");
    country2phone.add("CG:+242");
    country2phone.add("CR:+506");
    country2phone.add("CI:+225");
    country2phone.add("HR:+385");
    country2phone.add("CU:+53");
    country2phone.add("CY:+357");
    country2phone.add("CZ:+420");
    country2phone.add("DK:+45");
    country2phone.add("DJ:+253");
    country2phone.add("DM:+1-767");
    country2phone.add("DO:+1-809and1-829");
    country2phone.add("EC:+593");
    country2phone.add("EG:+20");
    country2phone.add("SV:+503");
    country2phone.add("GQ:+240");
    country2phone.add("ER:+291");
    country2phone.add("EE:+372");
    country2phone.add("ET:+251");
    country2phone.add("FJ:+679");
    country2phone.add("FI:+358");
    country2phone.add("FR:+33");
    country2phone.add("GA:+241");
    country2phone.add("GM:+220");
    country2phone.add("GE:+995");
    country2phone.add("DE:+49");
    country2phone.add("GH:+233");
    country2phone.add("GR:+30");
    country2phone.add("GD:+1-473");
    country2phone.add("GT:+502");
    country2phone.add("GN:+224");
    country2phone.add("GW:+245");
    country2phone.add("GY:+592");
    country2phone.add("HT:+509");
    country2phone.add("HN:+504");
    country2phone.add("HU:+36");
    country2phone.add("IS:+354");
    country2phone.add("IN:+91");
    country2phone.add("ID:+62");
    country2phone.add("IR:+98");
    country2phone.add("IQ:+964");
    country2phone.add("IE:+353");
    country2phone.add("IL:+972");
    country2phone.add("IT:+39");
    country2phone.add("JM:+1-876");
    country2phone.add("JP:+81");
    country2phone.add("JO:+962");
    country2phone.add("KZ:+7");
    country2phone.add("KE:+254");
    country2phone.add("KI:+686");
    country2phone.add("KP:+850");
    country2phone.add("KR:+82");
    country2phone.add("KW:+965");
    country2phone.add("KG:+996");
    country2phone.add("LA:+856");
    country2phone.add("LV:+371");
    country2phone.add("LB:+961");
    country2phone.add("LS:+266");
    country2phone.add("LR:+231");
    country2phone.add("LY:+218");
    country2phone.add("LI:+423");
    country2phone.add("LT:+370");
    country2phone.add("LU:+352");
    country2phone.add("MK:+389");
    country2phone.add("MG:+261");
    country2phone.add("MW:+265");
    country2phone.add("MY:+60");
    country2phone.add("MV:+960");
    country2phone.add("ML:+223");
    country2phone.add("MT:+356");
    country2phone.add("MH:+692");
    country2phone.add("MR:+222");
    country2phone.add("MU:+230");
    country2phone.add("MX:+52");
    country2phone.add("FM:+691");
    country2phone.add("MD:+373");
    country2phone.add("MC:+377");
    country2phone.add("MN:+976");
    country2phone.add("ME:+382");
    country2phone.add("MA:+212");
    country2phone.add("MZ:+258");
    country2phone.add("MM:+95");
    country2phone.add("NA:+264");
    country2phone.add("NR:+674");
    country2phone.add("NP:+977");
    country2phone.add("NL:+31");
    country2phone.add("NZ:+64");
    country2phone.add("NI:+505");
    country2phone.add("NE:+227");
    country2phone.add("NG:+234");
    country2phone.add("NO:+47");
    country2phone.add("OM:+968");
    country2phone.add("PK:+92");
    country2phone.add("PW:+680");
    country2phone.add("PA:+507");
    country2phone.add("PG:+675");
    country2phone.add("PY:+595");
    country2phone.add("PE:+51");
    country2phone.add("PH:+63");
    country2phone.add("PL:+48");
    country2phone.add("PT:+351");
    country2phone.add("QA:+974");
    country2phone.add("RO:+40");
    country2phone.add("RU:+7");
    country2phone.add("RW:+250");
    country2phone.add("KN:+1-869");
    country2phone.add("LC:+1-758");
    country2phone.add("VC:+1-784");
    country2phone.add("WS:+685");
    country2phone.add("SM:+378");
    country2phone.add("ST:+239");
    country2phone.add("SA:+966");
    country2phone.add("SN:+221");
    country2phone.add("RS:+381");
    country2phone.add("SC:+248");
    country2phone.add("SL:+232");
    country2phone.add("SG:+65");
    country2phone.add("SK:+421");
    country2phone.add("SI:+386");
    country2phone.add("SB:+677");
    country2phone.add("SO:+252");
    country2phone.add("ZA:+27");
    country2phone.add("ES:+34");
    country2phone.add("LK:+94");
    country2phone.add("SD:+249");
    country2phone.add("SR:+597");
    country2phone.add("SZ:+268");
    country2phone.add("SE:+46");
    country2phone.add("CH:+41");
    country2phone.add("SY:+963");
    country2phone.add("TJ:+992");
    country2phone.add("TZ:+255");
    country2phone.add("TH:+66");
    country2phone.add("TL:+670");
    country2phone.add("TG:+228");
    country2phone.add("TO:+676");
    country2phone.add("TT:+1-868");
    country2phone.add("TN:+216");
    country2phone.add("TR:+90");
    country2phone.add("TM:+993");
    country2phone.add("TV:+688");
    country2phone.add("UG:+256");
    country2phone.add("UA:+380");
    country2phone.add("AE:+971");
    country2phone.add("GB:+44");
    country2phone.add("US:+1");
    country2phone.add("UY:+598");
    country2phone.add("UZ:+998");
    country2phone.add("VU:+678");
    country2phone.add("VA:+379");
    country2phone.add("VE:+58");
    country2phone.add("VN:+84");
    country2phone.add("YE:+967");
    country2phone.add("ZM:+260");
    country2phone.add("ZW:+263");
    country2phone.add("GE:+995");
    country2phone.add("TW:+886");
    country2phone.add("AZ:+374-97");
    country2phone.add("CY:+90-392");
    country2phone.add("MD:+373-533");
    country2phone.add("SO:+252");
    country2phone.add("GE:+995");
    country2phone.add("CX:+61");
    country2phone.add("CC:+61");
    country2phone.add("NF:+672");
    country2phone.add("NC:+687");
    country2phone.add("PF:+689");
    country2phone.add("YT:+262");
    country2phone.add("GP:+590");
    country2phone.add("GP:+590");
    country2phone.add("PM:+508");
    country2phone.add("WF:+681");
    country2phone.add("CK:+682");
    country2phone.add("NU:+683");
    country2phone.add("TK:+690");
    country2phone.add("GG:+44");
    country2phone.add("IM:+44");
    country2phone.add("JE:+44");
    country2phone.add("AI:+1-264");
    country2phone.add("BM:+1-441");
    country2phone.add("IO:+246");
    country2phone.add(":+357");
    country2phone.add("VG:+1-284");
    country2phone.add("KY:+1-345");
    country2phone.add("FK:+500");
    country2phone.add("GI:+350");
    country2phone.add("MS:+1-664");
    country2phone.add("SH:+290");
    country2phone.add("TC:+1-649");
    country2phone.add("MP:+1-670");
    country2phone.add("PR:+1-787and1-939");
    country2phone.add("AS:+1-684");
    country2phone.add("GU:+1-671");
    country2phone.add("VI:+1-340");
    country2phone.add("HK:+852");
    country2phone.add("MO:+853");
    country2phone.add("FO:+298");
    country2phone.add("GL:+299");
    country2phone.add("GF:+594");
    country2phone.add("GP:+590");
    country2phone.add("MQ:+596");
    country2phone.add("RE:+262");
    country2phone.add("AX:+358-18");
    country2phone.add("AW:+297");
    country2phone.add("AN:+599");
    country2phone.add("SJ:+47");
    country2phone.add("AC:+247");
    country2phone.add("TA:+290");
    country2phone.add("CS:+381");
    country2phone.add("PS:+970");
    country2phone.add("EH:+212");
    }

  }

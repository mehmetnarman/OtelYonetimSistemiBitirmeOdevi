/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package yonetim;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.*;
import java.util.*;

/**
 *
 * @author Mehmet NARMAN
 */
public class bilgiler {
    public static int kiralanacakOda;
    public static String adi;
    public static String soyadi;
    public static int tc;
    public static int numara;
    public static int tutar;
    public static int gun;
    public static int fiyat;
    public static int ekFiyat;

    public static int getEkFiyat() {
        return ekFiyat;
    }

    public static void setEkFiyat(int ekFiyat) {
        bilgiler.ekFiyat = ekFiyat;
    }
    
    public bilgiler() {
    }
    
    public static int getKiralanacakOda() {
        return kiralanacakOda;
    }
    
    public static void setKiralanacakOda(int kiralanacakOda) {
        bilgiler.kiralanacakOda = kiralanacakOda;
    }
    
    public static String getAdi() {
        return adi;
    }
    
    public static void setAdi(String adi) {
        bilgiler.adi = adi;
    }
    
    public static String getSoyadi() {
        return soyadi;
    }

    public static void setSoyadi(String soyadi) {
        bilgiler.soyadi = soyadi;
    }

    public static int getTc() {
        return tc;
    }

    public static void setTc(int tc) {
        bilgiler.tc = tc;
    }

    public static int getNumara() {
        return numara;
    }

    public static void setNumara(int numara) {
        bilgiler.numara = numara;
    }

    public static int getTutar() {
        return tutar;
    }

    public static void setTutar(int tutar) {
        bilgiler.tutar = tutar;
    }
    
    public static int hesapla(String giris,String cikis){
    
    LocalDate localgiris= LocalDate.parse(giris);
    LocalDate localcikis= LocalDate.parse(cikis);
    
    Period diff = Period.between(localgiris, localcikis);
    bilgiler.gun=diff.getDays();
        return diff.getDays();
    }
    
    public static int tutarhesapla(int gun) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otelyonetim?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey", "root", "123456");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from odafiyat where oda='"+bilgiler.kiralanacakOda+"'");
            try {
                rs.next();
                bilgiler.fiyat=rs.getInt("fiyat");
                bilgiler.tutar=(bilgiler.fiyat*bilgiler.gun)+bilgiler.ekFiyat;
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return tutar;
    }
}

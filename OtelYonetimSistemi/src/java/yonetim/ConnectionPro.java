/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package yonetim;

import java.sql.*;


public class ConnectionPro {
    public static java.sql.Connection con;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otelyonetim?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey", "root", "123456");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
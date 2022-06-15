/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package yonetim;

/**
 *
 * @author Mehmet NARMAN
 */
public class tarih {
    public static String giris;
    public static String cikis;

    public tarih(String giris, String cikis) {
        this.giris = giris;
        tarih.cikis = cikis;
    }

    public tarih() {
    }

    public String getGiris() {
        return giris;
    }

    public void setGiris(String giris) {
        tarih.giris = giris;
    }

    public String getCikis() {
        return cikis;
    }

    public void setCikis(String cikis) {
        tarih.cikis = cikis;
    }

    
}

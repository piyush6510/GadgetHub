/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.utility;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author PIYUSH PATIL
 */
public class IDutil {
    public static String generateProdId()
    {
        Date d= new  Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdddhhmmss");
        String proId=sdf.format(d);
        proId="P"+proId;
        return proId;
    }
    public static String generateTransId()
    {
        Date d= new  Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdddhhmmss");
        String TransId=sdf.format(d);
        TransId="T"+TransId;
        return TransId;
    }
}

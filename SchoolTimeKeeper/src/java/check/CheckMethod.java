/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package check;

import dal.AccountDBContext;
import dal.TableDBContext;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import model.Account;
import model.Table;

/**
 *
 * @author buidu_8h8ybgq
 */
public class CheckMethod {
    
    public static boolean isOnline(){
    System.setProperty("http.proxyHost", "failProxyIP");
    System.setProperty("http.proxyPort", "failProxyPort");
    try {
        HttpURLConnection connection = (HttpURLConnection)new URL("https://akaking.space/").openConnection();
        connection.connect();
        return true;
    } catch (Exception e) {
        return false;
    }
}


    public static void main(String[] args) {
        TableDBContext tbc = new TableDBContext();
        AccountDBContext abc = new AccountDBContext();
        String query = "SELECT * FROM Teacher";
        System.out.println("row: " + tbc.getQueryRow(query) + " - "+ "col: " + tbc.getQueryCol(query));
        System.out.println(tbc.getQueryType(query, 2));
        Account account = abc.getAccount("admin", "Ad1234");
        System.out.println(account);
//        ArrayList<Table> table = tbc.getTable(););
//        table.forEach((n) -> System.out.println(n.getSchema()));
//        System.out.println("x");
//

//              try {
//         URL url = new URL("https://www.google.com/");
//         URLConnection connection = url.openConnection();
//         connection.connect();
//         System.out.println("Internet is connected");
//      } catch (MalformedURLException e) {
//         System.out.println("Internet is not connected");
//      } catch (IOException e) {
//         System.out.println("Internet is not connected");
//      }

//        System.out.println(isOnline());


    }
}


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author buidu_8h8ybgq
 */
public class DBContext {

    protected Connection connection;

    public DBContext() {
        InputStream inpS = DBContext.class.getClassLoader().getResourceAsStream("info_about_db.properties");
        Properties props = new Properties();
        try {
            props.load(inpS);
        } catch (IOException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String dbDrive = props.getProperty("dbDrive");
            String preUrl = props.getProperty("preUrl");
            String usr = props.getProperty("usr");
            String pwd = props.getProperty("pwd");
            String svrName = props.getProperty("svrName");
            String port = props.getProperty("port");
            String dbName = props.getProperty("dbName");

            String url = preUrl + "://" + svrName + ":" + port + ";databaseName=" + dbName;

            Class.forName(dbDrive);
            connection = DriverManager.getConnection(url, usr, pwd);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
        public boolean CheckConnect() {

        try {
            if (connection != null) {
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }
        
        public String getURL() {
        InputStream inpS = DBContext.class.getClassLoader().getResourceAsStream("info_about_db.properties");
        Properties props = new Properties();
        try {
            props.load(inpS);
        } catch (IOException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        
            String dbDrive = props.getProperty("dbDrive");
            String preUrl = props.getProperty("preUrl");
            String usr = props.getProperty("usr");
            String pwd = props.getProperty("pwd");
            String svrName = props.getProperty("svrName");
            String port = props.getProperty("port");
            String dbName = props.getProperty("dbName");

            String command = preUrl + "://" + svrName + ":" + port + ";databaseName=" + dbName + " -U " + usr + " -P " + pwd + " | - Drive: " + dbDrive;

        return command;
    }
        
            public String urlHost(String WebIP) throws UnknownHostException {
        InetAddress localHost = InetAddress.getLocalHost();
        String IP = localHost.getHostAddress();
        return (IP.equals(WebIP)) ? "localhost" : WebIP;

    }

}

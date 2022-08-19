package context;

import java.io.InputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {

    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
 /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
    //protected Connection connection;
    /*
        public DBContext() {
        try {
            String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, userID, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     */
    public final String urlHost(String WebIP) throws UnknownHostException {
        InetAddress localHost = InetAddress.getLocalHost();
        String IP = localHost.getHostAddress();
        return (IP.equals(WebIP)) ? "localhost" : WebIP;

    }

    //OLD-VER
//    public Connection getConnection() throws Exception {
//        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
//        //String url = "jdbc:sqlserver://" + serverName + ";databaseName=" + dbName;
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        return DriverManager.getConnection(url, userID, password);
//    }
    public Connection getConnection() throws Exception {
        InputStream inputStream = DBContext.class.getClassLoader().getResourceAsStream("db.properties");
        Properties properties = new Properties();
        properties.load(inputStream);

        String dbDriver = properties.getProperty("dbDriver");
        String pre = properties.getProperty("pre");
//      String serverIp = urlHost(properties.getProperty("serverIp"));
        String serverIp = properties.getProperty("serverIp");
        String dbName = properties.getProperty("dbName");
        String portNumber = properties.getProperty("portNumber");
        String userID = properties.getProperty("userID");
        String password = properties.getProperty("password");
        String url = pre + serverIp + ":" + portNumber + ";databaseName=" + dbName;
        Class.forName(dbDriver);
        return DriverManager.getConnection(url, userID, password);
    }

    public boolean CheckConnect() {

        try {
            DBContext dBContext = new DBContext();
            if (dBContext.getConnection() != null) {
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }
    
        public String getURL() throws Exception {
        InputStream inputStream = DBContext.class.getClassLoader().getResourceAsStream("db.properties");
        Properties properties = new Properties();
        properties.load(inputStream);

        String dbDriver = properties.getProperty("dbDriver");
        String pre = properties.getProperty("pre");
//        String serverIp = urlHost(properties.getProperty("serverIp"));
        String serverIp = properties.getProperty("serverIp");
        String dbName = properties.getProperty("dbName");
        String portNumber = properties.getProperty("portNumber");
        String userID = properties.getProperty("userID");
        String password = properties.getProperty("password");
        String command = pre + serverIp + ":" + portNumber + ";databaseName=" + dbName + " -U "+ userID +" -P "+ password;
        Class.forName(dbDriver);
        return command;
    }


    /*Insert your other code right after this comment*/
 /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
//    private final String serverName = "216.231.128.32";
//    private final String dbName = "akakings";
//    private final String portNumber = "1433";
//    private final String userID = "akakingsu";
//    private final String password = "Gb6NyhQz3OYU";

//    private final String serverName = "mssql-85921-0.cloudclusters.net";
//    private final String dbName = "GamingShopDB";
//    private final String portNumber = "11950";
//    private final String userID = "sa000";
//    private final String password = "Dx123456";
//    private final String serverName = "localhost";
//    private final String dbName = "Project_SE1511";
//    private final String portNumber = "1143";
//    private final String userID = "sa";
//    private final String password = "123456";
    public static void main(String[] args) {
        try {
            DBContext dBContext = new DBContext();
            if (dBContext.getConnection() != null) {
                System.out.println("Connect DB successful");
            } else {
                System.out.println("Connect db false");
            }
        } catch (Exception ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

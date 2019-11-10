
package com.universal.service;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
    
    public static Connection getConnection()
    {
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fees_assessment","root","root");
           }
        catch(Exception e){}
        return con;
    }
}
            
    


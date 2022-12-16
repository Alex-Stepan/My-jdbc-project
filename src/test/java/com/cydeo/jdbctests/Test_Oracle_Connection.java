package com.cydeo.jdbctests;

import java.sql.*;

public class Test_Oracle_Connection {


    public static void main(String[] args) throws SQLException {
        /**
         * 3 Steps:
         *  1. Connection
         *  2. Statement
         *  3. ResultSet
         */

        String dbURL =  "jdbc:oracle:thin:@3.91.204.114 :1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        //1. Connection - in order to test Database using JAVA, first step we need to connect Database via Connection String
            Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        //2. Statement - Helps to write and execute SQL query
            Statement statement = conn.createStatement();

        //3. ResultSet - a data structure where we can store the data that came from database
            ResultSet rs = statement.executeQuery( " SELECT * FROM REGIONS" );

            
            //================================================================================
        

//        //A1. Europe, next() --> move cursor to next line
//        rs.next();
//
//            //Result: 1
//            System.out.println("rs.getInt(1) = " + rs.getInt(1));
//            System.out.println("rs.getInt(\"REGION_ID\") = " + rs.getInt("REGION_ID"));
//
//            //Result: Europe
//            System.out.println("rs.getInt(2) = " + rs.getString(2));
//            System.out.println("rs.getInt(\"REGION_NAME\") = " + rs.getString("REGION_NAME"));
//
//
//        System.out.println("\nResult: " + rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));
//
//
//        //A2. Americas
//        rs.next();
//
//            System.out.println("\nResult: " + rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));
//
//        //A3. Asia
//        rs.next();
//
//        System.out.println("\nResult: " + rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));
//
//        //A4. Middle East and Africa
//        rs.next();
//
//        System.out.println("\nResult: " + rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));
//
//        System.out.println("================================================================");
        //============================================================================
        
        while (rs.next()){
            System.out.println("\nResult: " + rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));

        }


    }


}

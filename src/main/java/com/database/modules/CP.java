package com.database.modules;

import java.sql.*;
 

public class CP {
	static Connection con;
	public static Connection createC()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String url="jdbc:mysql://localhost:3306/dicto";
			String user="root";
			String password="root";
			
			con=DriverManager.getConnection(url,user,password);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
		
	}
	
	

}

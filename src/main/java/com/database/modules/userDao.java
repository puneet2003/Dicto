package com.database.modules;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.database.modules.CP;
import com.database.modules.user;

public class userDao {
	
	//insert data.....
		public static boolean insertData(user st)
		{	
			boolean f=false;
			Connection con =CP.createC();
			String q="insert into user (name,dob,email,password) values (?,?,?,?)";
			
			try {
				//prepared statement object of current connection.....
				PreparedStatement pstmt=con.prepareStatement(q);
				pstmt.setString(1,st.getName());
				pstmt.setString(2,st.getDob());
				pstmt.setString(3,st.getEmail());
				pstmt.setString(4,st.getPassword());
				
				//execute the statement.....
				pstmt.executeUpdate();
				f=true;
				
			} catch (SQLException e) {e.printStackTrace();}
			return f;
			
		}
		
		
		
		//delete data....
		public static boolean  DeleteData(int userid)
		{
			boolean f=false;
			Connection con =CP.createC();
			String q="delete from stud where id=?";
			
			try {
				//prepared statement object of current connection.....
				PreparedStatement pstmt=con.prepareStatement(q);
				pstmt.setInt(1,userid);
				
				//execute the statement.....
				pstmt.executeUpdate();
				f=true;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return f;
		}
		
		//update data.....
		public static boolean updatedata(String name,int id)
		{
			boolean f=false;
			Connection con =CP.createC();
			String q="update stud set name=? where id=?";
			
			try {
				//prepared statement object of current connection.....
				PreparedStatement pstmt=con.prepareStatement(q);
				pstmt.setString(1,name);
				pstmt.setInt(2, id);
				
				//execute the statement.....
				pstmt.executeUpdate();
				f=true;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return f;
		}
		
		//display data.....
		public static void displaydata()
		{
			Connection con =CP.createC();
			String q="select * from stud";
			
			try {
				//prepared statement object of current connection.....
				Statement stmt=con.createStatement();
				ResultSet set = stmt.executeQuery(q);
				
				while(set.next())
				{
					System.out.println(set.getInt(1)+" "+set.getString(2));
				}
				
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}

		public static int getuserid() throws SQLException {
			Connection con =CP.createC();
			int id=0;
			String q="SELECT iduser FROM user ORDER BY iduser DESC LIMIT 1;";
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			while(set.next())
			{id=set.getInt(1);}
			return id+1;
		}
		
		public static boolean checkEmail(user ob) throws SQLException
		{	Connection con =CP.createC();
		String q="SELECT email FROM user;";
		Statement stmt=con.createStatement();
		ResultSet set = stmt.executeQuery(q);
		while(set.next()) 
		{
			if(set.getString(1).equals(ob.getEmail()))
			{
				return true;
			}
		}
		
			return false;
		}
		
		public static boolean isadmin(user ob) throws SQLException
		{	Connection con =CP.createC();
			String q="SELECT email,password FROM user;";
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			
			while(set.next())
			{
				if(set.getString(1).equals(ob.getEmail())&&set.getString(2).equals(ob.getPassword()))
				{
					return true;
				}
			}
			
			return false;
			
		}
		
		
	
	
}

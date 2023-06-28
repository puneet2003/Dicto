package com.database.modules;

public class user {

		private String registration;
		private String name;
		private String email;
		private String dob;
		
		public String getDob() {
			return dob;
		}



		public void setDob(String dob) {
			this.dob = dob;
		}

		private String password;
		
		
		public user(String registration, String name, String dob, String email, String password) {
			super();
			this.setRegistration(registration);
			this.setName(name);
			this.setEmail(email);
			this.setDob(dob);
			this.setPassword(password);
			}
	
		

		public user(String email, String password) {
		super();
		this.setEmail(email);
		this.setPassword(password);
	}

		
		public user(String registration,String email,String name, String password) {
		super();
		this.setRegistration(registration);
		this.setName(name);
		this.setEmail(email);
		this.setPassword(password);
		
	}

		public String getRegistration() {
			return registration;
		}

		public void setRegistration(String registration) {
			this.registration = registration;
		}

	
		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		

}

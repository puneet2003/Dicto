package com.database.modules;

public class doctor {
		private int iddoctor;
		private String registration;
		private String name;
		
		private String dob;
		private String email;
		private String password;
		public String getDob() {
			return dob;
		}

		public void setDob(String dob) {
			this.dob = dob;
		}
		
		public doctor(String name, String dob, String email, String password) {
			super();
			this.name = name;
			this.dob = dob;
			this.email = email;
			this.password = password;
		}
		
		public doctor(String email, String password) {
			super();
			this.email = email;
			this.password = password;
		}
		
		public doctor() {
			super();
		}

		public doctor(String name, String email, String password) {
			super();
			this.name = name;
			this.email = email;
			this.password = password;
		}
		

		public doctor(int iddoctor, String registration, String name, String email, String password) {
			super();
			this.iddoctor = iddoctor;
			this.registration = registration;
			this.name = name;
			this.email = email;
			this.password = password;
		}
		
		public int getIddoctor() {
			return iddoctor;
		}
		public void setIddoctor(int iddoctor) {
			this.iddoctor = iddoctor;
		}
		public String getRegistration() {
			return registration;
		}
		public void setRegistration(String registration) {
			this.registration = registration;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}

		
		
		
		
		
		
}

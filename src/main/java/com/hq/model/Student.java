package com.hq.model;

public class Student {
	private String Name;
	private String telephone;
	private Integer studentid;
	private String identitys;
	private String QQ;
	private String gender;
	private Integer mustTuition;
	private Integer actualTuition;
	private String email;
	private String school;
	private String education;
	private String professional;
	private String identityAddress;
	private String address;
	private String remark;
	private String homeTelephone;
	private String homeContact;
	private String status;
	
	private Refer refer;
	private Clazz clazz;
	
	
	public Refer getRefer() {
		return refer;
	}


	public void setRefer(Refer refer) {
		this.refer = refer;
	}


	public Clazz getClazz() {
		return clazz;
	}


	public void setClazz(Clazz clazz) {
		this.clazz = clazz;
	}


	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Student(String name, String telephone, Integer studentid, String identitys, String qQ, String gender,
			Integer mustTuition, Integer actualTuition, String email, String school, String education,
			String professional, String identityAddress, String address, String remark, String homeTelephone,
			String homeContact, String status, Refer refer, Clazz clazz) {
		super();
		Name = name;
		this.telephone = telephone;
		this.studentid = studentid;
		this.identitys = identitys;
		QQ = qQ;
		this.gender = gender;
		this.mustTuition = mustTuition;
		this.actualTuition = actualTuition;
		this.email = email;
		this.school = school;
		this.education = education;
		this.professional = professional;
		this.identityAddress = identityAddress;
		this.address = address;
		this.remark = remark;
		this.homeTelephone = homeTelephone;
		this.homeContact = homeContact;
		this.status = status;
		this.refer = refer;
		this.clazz = clazz;
	}


	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}


	public Integer getStudentid() {
		return studentid;
	}


	public void setStudentid(Integer studentid) {
		this.studentid = studentid;
	}


	public String getIdentitys() {
		return identitys;
	}


	public void setIdentitys(String identitys) {
		this.identitys = identitys;
	}


	public String getQQ() {
		return QQ;
	}


	public void setQQ(String qQ) {
		QQ = qQ;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public Integer getMustTuition() {
		return mustTuition;
	}


	public void setMustTuition(Integer mustTuition) {
		this.mustTuition = mustTuition;
	}


	public Integer getActualTuition() {
		return actualTuition;
	}


	public void setActualTuition(Integer actualTuition) {
		this.actualTuition = actualTuition;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getSchool() {
		return school;
	}


	public void setSchool(String school) {
		this.school = school;
	}


	public String getEducation() {
		return education;
	}


	public void setEducation(String education) {
		this.education = education;
	}


	public String getProfessional() {
		return professional;
	}


	public void setProfessional(String professional) {
		this.professional = professional;
	}


	public String getIdentityAddress() {
		return identityAddress;
	}


	public void setIdentityAddress(String identityAddress) {
		this.identityAddress = identityAddress;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getRemark() {
		return remark;
	}


	public void setRemark(String remark) {
		this.remark = remark;
	}


	public String getHomeTelephone() {
		return homeTelephone;
	}


	public void setHomeTelephone(String homeTelephone) {
		this.homeTelephone = homeTelephone;
	}


	public String getHomeContact() {
		return homeContact;
	}


	public void setHomeContact(String homeContact) {
		this.homeContact = homeContact;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Student [Name=" + Name + ", telephone=" + telephone + ", studentid=" + studentid + ", identitys="
				+ identitys + ", QQ=" + QQ + ", gender=" + gender + ", mustTuition=" + mustTuition + ", actualTuition="
				+ actualTuition + ", email=" + email + ", school=" + school + ", education=" + education
				+ ", professional=" + professional + ", identityAddress=" + identityAddress + ", address=" + address
				+ ", remark=" + remark + ", homeTelephone=" + homeTelephone + ", homeContact=" + homeContact
				+ ", status=" + status + "]";
	}

	
	
	
	
	
	
	
	

}

package com.internousdev.ecsite.action;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dto.UserCreateDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CreateUserAction extends ActionSupport implements SessionAware{
//	private String userId;
	private String userName;
	private String password;
	private String checkPassword;
	private String postalCode;
	private String address;
	private String tell;
	private String email;
	public Map<String,Object> session;
	private String errorMassage;
	private UserCreateDTO userCreateDTO = new UserCreateDTO();

	public String execute(){
		String result = SUCCESS;
//		String result = ERROR;
//		System.out.println(userName);
//		System.out.println(password);
//		if(!(userName.equals("")) && !(password.equals("")) && !(address.equals("")) && !(tell.equals("")) && !(email.equals(""))){
//			if(userName.length() >= 6 && userName.length() <= 8 && password.length() >=8 && password.length() <= 16){
//			userCreateDTO.setUserName(userName);//6以上10以下
//			userCreateDTO.setPassword(password);//8以上16以下
//			userCreateDTO.setPostalCode(postalCode);
//			userCreateDTO.setAddress(address);
//			userCreateDTO.setTell(tell);///////////////////////dtoにぶち込む
//			userCreateDTO.setEmail(email);
//			result = SUCCESS;
//			return result;
//			}
//		}else{
//			setErrorMassage("正しく入力してください!!!!!!");
//		}
//		return result;

//		未記入がないか確認
		if(userName.equals("") || password.equals("") || address.equals("") || tell.equals("") || email.equals("")){
			setErrorMassage("未入力の箇所があります");
			result = ERROR;
			return result;
			}


		if(!(userName.length() >= 6 && userName.length() <= 10)){
			setErrorMassage("名前の記入が正しくありません。");
			result = ERROR;
			return result;
			}

		if(!(password.length() >= 8 && password.length() <= 16)){
			setErrorMassage("パスワードの記入が正しくありません。");
			result = ERROR;
			return result;
		}
		if(!(password.equals(checkPassword))){
			setErrorMassage("パスワードと確認パスワードが一致していません。");
		}

//		郵便番号確認
		String postalCodeRegex = "^\\d{3}-\\d{4}$";
		Pattern pp = Pattern.compile(postalCodeRegex);
		Matcher pm = pp.matcher(postalCode);
		if(!(pm.find())){
			setErrorMassage("郵便番号の記入が正しくありません。");
			result = ERROR;
			return result;
		}


//		住所確認
		String [] addresslist = {"都","道","府","県","市","区","町","村"};
		int addressCount = 0;
		for (int i=0; i < addresslist.length; i++){
			if(address.contains(addresslist[i])){
					addressCount++;
			}
		}
		if(addressCount < 2){
			setErrorMassage("住所の記入が正しくありません。");
			result = ERROR;
			return result;
		}

//		電話番号確認
		String tellRegex = "^\\d{3}-\\d{4}-\\d{4}$";
		Pattern tp = Pattern.compile(tellRegex);
		Matcher tm = tp.matcher(tell);
		if(!(tm.find())){
			setErrorMassage("電話番号の記入が正しくありません。");
			result = ERROR;
			return result;
		}

//		メールアドレス確認
		String [] emaillist = {"@gmail.com","@softbank.ne.jp","@i.softbank.jp","@docomo.ne.jp","@ezweb.ne.jp"};
		int emailCount = 0;
		for (int j=0; j < emaillist.length; j++){
			if(email.contains(emaillist[j])){
				emailCount++;
			}
		}
		if(emailCount == 0){
			setErrorMassage("メールアドレスの記入が正しくありません。");
			result = ERROR;
			return result;
		}


		userCreateDTO.setUserName(userName);//6以上10以下
		userCreateDTO.setPassword(password);//8以上16以下
		userCreateDTO.setPostalCode(postalCode);
		userCreateDTO.setAddress(address);
		userCreateDTO.setTell(tell);
		userCreateDTO.setEmail(email);
		return result;
		}


//	public String getUserId() {
//		return userId;
//	}
//
//	public void setUserId(String userId) {
//		this.userId = userId;
//	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCheckPassword() {
		return checkPassword;
	}

	public void setCheckPassword(String checkPassword) {
		this.checkPassword = checkPassword;
	}


	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getErrorMassage() {
		return errorMassage;
	}

	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
	}

	public UserCreateDTO getUserCreateDTO() {
		return userCreateDTO;
	}

	public void setUserCreateDTO(UserCreateDTO userCreateDTO) {
		this.userCreateDTO = userCreateDTO;
	}

}

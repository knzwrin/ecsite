package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BackAction extends ActionSupport implements SessionAware{
		public Map<String,Object> session;
		public String execute(){

		if(session.containsKey("categoryId")){
			System.out.println("削除");
				session.remove("categoryId");
			}
		if(session.containsKey("searchWord")){
			session.remove("searchWord");
			}
			return SUCCESS;
		}
		@Override
		public void setSession(Map<String, Object> session) {
			this.session = session;
		}
}
